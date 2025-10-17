Return-Path: <devicetree+bounces-228037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D221BE6E82
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 09:16:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2052D4E36E5
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 07:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EF60221F1A;
	Fri, 17 Oct 2025 07:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mYkY7Jjh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6116F1519A6
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 07:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760685409; cv=none; b=mt+6/VE5rdmX1ZHV6Ef1zFbtS59wrqJ6R7a9OkYAAX5Yh88x6B44aYF1gsNimUMMEtpFsPZZvlMtRc6M3STqYlgRvf/l6kQ0KD8Oh9fqziWMwFKvH/DpByYv2m/FZaqIjN93Xqufner7IQeSDnp+i0pKHvm3PGJ9u9wsOBu1MHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760685409; c=relaxed/simple;
	bh=WkjCDe1iZN7RtpJMQ0j2jTJpcuy68lAreT7PSN3xNOU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=srrjjNj9oAvtUL5QufZLUqpDpHIunBQsOIlLB6+uNvA7fUOzOhHzyVkAAsVCnXRpD45t/Y73uuaQYy9IzhkmOaWY5XXZdxfG5ToOaFC4Rgo/JxQw/kLKK8RIwVOgQ2tiIQt6nk+cKg9g7wsI+VO5dbUeFxkkGD8TRwBoHjCqqCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mYkY7Jjh; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-427007b1fe5so882314f8f.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760685406; x=1761290206; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/84w58qQZ+rLVnC175uQ717jpwJwUQ31K6AtMEodINU=;
        b=mYkY7Jjh0swz3Zj6BJOWspvwg0dD8okkrHJ8uylfSslXXXFKWY3BqH59ypHo8F3vAf
         IHTVeoF2vootjHbLaYQLNJmE8+9fVPZ5Acs6KYg7YGk3CO+mKuwtQGHQmhnV16xUZLfL
         BpiyufWjMllKeBb99yFmWS/8CMrLbeh5IXX1MjNgHqHE/GT9mapsjprErNMsSEx6DKBi
         zoJsF+mamn5iXzpaMKbrOYIy0YvEOutPOdSCc0iOtqI9R/vtz8coorpMIcmEMUjq54B2
         FNIpfSNQBK1sY5tNEYGk6eHCBFMhZE4Km+iZToGonRLmYfo0rbhN3yzqdHwx6A538m0b
         opKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760685406; x=1761290206;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/84w58qQZ+rLVnC175uQ717jpwJwUQ31K6AtMEodINU=;
        b=GpTfCx9c4kU9i9EFSEsOwUWaQ1EM0edymaBzuYWetIUNNNQDgMVMgRmxfvNNcYR8DP
         Q0YuRS8yMJpYQD27N1GBAh3DrT5r6T5rLwRrW1Wtxd3RXGRZe6NuL9ZzUr1KGh1/W3vS
         obL8fpSmFXF0Qy1iYNx1XFgQrxIUMqHU8T3OHunrrAXPKBzysC+5nBES7WoBxfw5KZh7
         btrzsfx7mmr8B2vrDrtxNvAQCS+Jd+1YrOE4Hno8PDImUB9DcZMN4jOtX7RZQbmsHL4D
         53C94+00Gsw1MTzUfgT2LybAUB0/nOHEIhxQaQ2Z0bJbbnGOgsNOcJniz0PLvU/cLSxd
         /Rvw==
X-Forwarded-Encrypted: i=1; AJvYcCU09dy222ozFRE898n+4blpDC3WEk7p3h+ld/mMcBnpwy9U1w9F9uw+IRSy+qa/Su18IHTasSStJrOS@vger.kernel.org
X-Gm-Message-State: AOJu0YwIKUl73eQXTsxd90N5noijdwpY4l6H/NZz6q28SOYYujky2fOC
	gEmtWd/U9zHbW7p+ouvX4flzI1huYDxnAfhZxxqNAnIIorFtFwko5q24J7eqb8VfL4A=
X-Gm-Gg: ASbGncvuFEd7zF/G+ornXcQbkKk5NLjMVBpcN6uGxTICPjI2ZWTZM/yuLaQ8atiMMCB
	cb2B1QP00qlWQxv7OyDYoKvrlLC59iDRJIJEwqtjBxuCph62fyqgL/5PnEvXpYu+U/64Kc4Avn9
	hAwUgxrBgwKMHULtaRIRhYovtY7jcKQMFdMW32+icMSfEgC2eCppmWThE8l0wniB7OjbGKntEwM
	dJOQYlI1q0YCRUtR4jpoZrms/RwkalXqFMmdZgtBU+PreWj+ls1WDrizZlIaepiB6VLxOcWjjGp
	1pkhizAhlj2PeYDzhhwLgjUrdz3k5rH2OmRhQttDBXH2fJavZt23dP4JaqHHI2uX/JZ2GqUUNWb
	vXLAbyY6zsZTW45rYpwSjXixRbO0xO2NyWGvVpLgvLPNf2fF5HhUTR47FKGvReurCSKWOXEkPFI
	7+whP5vnOf5zmnrlKUFGe9J+iMY/xr3UeMtMkDmEq6BF7pvqxPMPUs
X-Google-Smtp-Source: AGHT+IF7LOY71VQuEzuxisA/iTxejx1ayZfDkhvVP5vzlYMYI0gvSKqUuuYoYZZ8O0skgjsMBVRidA==
X-Received: by 2002:a5d:5f82:0:b0:3e8:9e32:38f8 with SMTP id ffacd0b85a97d-42704d8d596mr1854422f8f.14.1760685405562;
        Fri, 17 Oct 2025 00:16:45 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5849:4623:6b2a:2be9? ([2a01:e0a:3d9:2080:5849:4623:6b2a:2be9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42704141cdfsm5819512f8f.4.2025.10.17.00.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 00:16:44 -0700 (PDT)
Message-ID: <2c04870d-960e-4978-b51b-2d8e41f8c452@linaro.org>
Date: Fri, 17 Oct 2025 09:16:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] arm64: dts: qcom: sm8450: enable camera clock controller
 by default
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250909235547.787396-1-vladimir.zapolskiy@linaro.org>
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
In-Reply-To: <20250909235547.787396-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/10/25 01:55, Vladimir Zapolskiy wrote:
> Enable camera clock controller on Qualcomm SM8450 boards by default
> due to a reasonable agreement of having all clock controllers enabled.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
> The change is based on Bjorn's qcom/arm64-for-6.18 branch.
> 
>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 9ebf2b8700d2..e9ffa0af3cb3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -3300,7 +3300,6 @@ camcc: clock-controller@ade0000 {
>   			#clock-cells = <1>;
>   			#reset-cells = <1>;
>   			#power-domain-cells = <1>;
> -			status = "disabled";
>   		};
>   
>   		mdss: display-subsystem@ae00000 {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

