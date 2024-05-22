Return-Path: <devicetree+bounces-68358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C06A28CC0A2
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 13:51:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7188B283202
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 11:51:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4853913D530;
	Wed, 22 May 2024 11:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QIY9vgQW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB2A13D52B
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 11:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716378657; cv=none; b=Sio8rHmuJZ2G6e2PhSueUugr0f8tL+puHhfbQxDkCQF72whHG427y7YN0Ow+a+czXtuU2SwbhUAMH3Xl8Vn7m5T/5d3kDWesH+xSABuPUPvdJfh4EZXY1lTMSI1gw6oNvjU+6XvQZFZRfcGxMPGbWbZsBdNliIbwTWVZF1YT8vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716378657; c=relaxed/simple;
	bh=xuIhDV7rRZwKTVNf/UW8iqp/4UGbYaxtCKVMJrH8lQU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=foz7em6dndKWf4dodQ8pNIH55SwO7tCGAn54FAhMH8zKKgxqxZGZXDBhlJ5VOXBG1PlBvbodj2fc+FLKTYR1BAjqN9yZ0j/UUWv9GK0qygwARfGj09892QlqTelJFL4YGt84bF0d+DrAu580+Ik0orisGpB8G1dYWKMIz04uTFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QIY9vgQW; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a5a5cce2ce6so881845866b.3
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 04:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716378653; x=1716983453; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yd5oW/Yg0rGA94eKqcIAc76EkjdcxSx2TyuzLljfjrk=;
        b=QIY9vgQWmOFEuREWj+270v/8yuI6ZDOA9xXL2tYDgNPDd2gac8cwdHnimuJJsKQ2o8
         c0U9IHv41XGJ7KPIbee87saCgrZP2BjPhQT9KtqEX4YIou/6hDBTUoF/EWumxcsBX14d
         akslfjWWHqTuvFmdzByyHFxVdumiDRn1AnmLdhzgdZYqFaImKxGpKmw8/P+jBis5FgrN
         0vLltD+NkYnnEJBZoJkgsXTPCTy/mhvBReOJmZUVRm7u83u3KpPTaNkAL3lP2DnY+H+6
         X/DBBmmtfJNgHAuFXKX1AatPVSE55GcSb0H7nkAeVX6Fwd0TXr/KtNiUuvNIFDhUZyU6
         rKzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716378653; x=1716983453;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yd5oW/Yg0rGA94eKqcIAc76EkjdcxSx2TyuzLljfjrk=;
        b=qrbPqo42c1PKHrWbdUicqxAJbgjHwLlsaY2RBNRn3wlJabg2vgH6sQnnU+8Z2x2Tc8
         5Xd2mRWBSles0o8myPuCofldWIjtZg0dDkKM0TmoiGcapzAriX27iMBFZjdU+usOL2PW
         +OX2KCyUA5KsfyHpkzsK+0QyYI6r+Um85bGbMpocyB2/oKOCA8StvNfxlLEOrC57/6Uf
         Hkc9dIbd5g3seUdcoIY6WHTw/tuRWY7SEt3txZE+BQYMLy8syDSAofpFIeK9bBHZem6a
         EjG2juos0E7uoeQJ3KBeukQ8jvlkVHpcDTY9fg42n/NFcabQjJ/+X01Qedca7MuzpdRz
         l1jw==
X-Forwarded-Encrypted: i=1; AJvYcCVDG98vpU9exjOIRBvK7xR1kXhIfK5ovioq+cRQUcDZpwMVLOY9ZLY/nk576vMCvhUZAJxW1ZS7z8g1spyQ2rRGn0v9GSiZwha2jg==
X-Gm-Message-State: AOJu0Yz46PB4GtW/DMZYz32MrxvFqZ033Km2IUugpRQox07jH5M2LpUr
	pRQaD66Lsc20tIFak0f8Bc1zxWUnNDN1ktuhLJjrliwIb8JTkJ0iirwe4h+FjdI=
X-Google-Smtp-Source: AGHT+IFGiOTO0ylGuf3k6rpu5+NBLFfcw8q+dAYVxiEl6/ftDj5oK+RL+v/wVxS+2JN9Evufg6Vc5w==
X-Received: by 2002:a17:907:9382:b0:a59:b342:3ed5 with SMTP id a640c23a62f3a-a622805565bmr96650566b.15.1716378652740;
        Wed, 22 May 2024 04:50:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:8b9d:52bd:4757:6b10? ([2a01:e0a:982:cbb0:8b9d:52bd:4757:6b10])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17b17808sm1769934166b.217.2024.05.22.04.50.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 May 2024 04:50:52 -0700 (PDT)
Message-ID: <3dbf3ae9-e5b3-4257-ac63-b007a3ca391f@linaro.org>
Date: Wed, 22 May 2024 13:50:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] pinctrl: qcom: spmi: Add PMC8380
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240522-topic-pmc8380_gpio-v1-0-7298afa9e181@linaro.org>
 <20240522-topic-pmc8380_gpio-v1-2-7298afa9e181@linaro.org>
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
In-Reply-To: <20240522-topic-pmc8380_gpio-v1-2-7298afa9e181@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/05/2024 13:30, Konrad Dybcio wrote:
> PMC8380 is a new chip, featuring 10 GPIOs. Describe it.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   drivers/pinctrl/qcom/pinctrl-spmi-gpio.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c b/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
> index 4e80c7204e5f..ce576149b7ae 100644
> --- a/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
> +++ b/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
> @@ -1235,6 +1235,7 @@ static const struct of_device_id pmic_gpio_of_match[] = {
>   	{ .compatible = "qcom,pm8994-gpio", .data = (void *) 22 },
>   	{ .compatible = "qcom,pm8998-gpio", .data = (void *) 26 },
>   	{ .compatible = "qcom,pma8084-gpio", .data = (void *) 22 },
> +	{ .compatible = "qcom,pmc8380-gpio", .data = (void *) 10 },
>   	{ .compatible = "qcom,pmd8028-gpio", .data = (void *) 4 },
>   	{ .compatible = "qcom,pmi632-gpio", .data = (void *) 8 },
>   	{ .compatible = "qcom,pmi8950-gpio", .data = (void *) 2 },
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

