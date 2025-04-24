Return-Path: <devicetree+bounces-170446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC69A9ADC2
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 14:43:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04FCD466AA3
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9271427B4E2;
	Thu, 24 Apr 2025 12:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kp8GFliN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782A927B4F1
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 12:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745498607; cv=none; b=n51RsbHL1OCdrj3THP85RhaFDEKQIDxvW00Tl33jmF8vWl4RtDpuYSBLbQ/5RsbcmUcCTPh/j19jLOtuCC0vss5fotD6C3W6TDYwDRRh7P1CiIZ1GTyFNgjlOppox/6TO/EADeef8AQyGlSz1W0/JkMCnTi0NdufNmJ82NWrncU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745498607; c=relaxed/simple;
	bh=0+zl5wuGgPcf2CwpTpY77n4FYm2pqM3kEQ4akgqPcU4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=KHX4gzGe9DEUsR+d17fe3NbWKi5HbQvPsVAdYrFxaJ3TxR0B/abNDxM7KzWikaKbDpKSCeH5KU0k6I6Ooiqp6FGjMRelM/caC6rqdFoymyHXBo6O1e/HMzzICy+aouggl1ATOA788sNetO+e/zzW2nNOTZQPvtEIUYf0i8bIreE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kp8GFliN; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so6583555e9.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 05:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745498603; x=1746103403; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BVyorItIXBjMu6EtOX9IrPexB43LsYGbQ6QOmhU4BzE=;
        b=kp8GFliNVrBGRP3zOL/EtaGk//QasOBklSeBggch3uunsIWR8on3g9p2n4G0iqallA
         DTVGtQXdtv+fu72yxg+oDSt6EJ7uNWjx5GXw/fnKeuzyhm7JKSnmVWBsSgx6QRZ6TWDq
         BlXe7W/fZe0dGOUeujNCS1uxjdcTlJEPQw2Pt+DSNgFxsIpHnlYU2B/+vM0tSvQsc+W1
         kevaNS9YKV8w4xm8OPXIxcRNAJuLIOM4d+gPYKbCT5w3LLrvl/zh2GR0EEo03xQ95aBv
         rVoa2nh8dTGbyj8Fqf549HhIsrTEK3eOAQEEG4Lk5j46O2OtTKsbfUCslGxtx88zHGfo
         zsBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745498603; x=1746103403;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BVyorItIXBjMu6EtOX9IrPexB43LsYGbQ6QOmhU4BzE=;
        b=trCYXIUtkNc+odTn0Pd82wFUqmV3XjG/36TAVkGkwupO9LWiIPq6lcNyT63QZEn4Rd
         ryvSmwC0h2hzZKPTM0tyRI5hr7+ZrNJA/4wosuq+GWKihcHabTLGRyre4ozZpAGnuBi9
         16ZDAwIEHZsg/ftJE29AweEKu0IZvFsDGJJumlXf461de/5CyDCpmuJAl883DOzZPQgr
         GszHgc1MpCFa/VajaQLdm+N75c4/O7sopL4dZXjahcj8s4MjKQMZ48HHOcA1tmxfyFwM
         0fatVz7dWDaPey5GOfKTD4Mbu9/gs2eFsBUEFCG9mYZCSf34nwbQKOEI3PuzacWiHnJW
         WT3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUyN/MPWeqJD776RMh2+1KR4iJ29NrjfbPskfavQ5//Ilnvap8LkwO+LJCivFQLfpnUnl58diOb5LEh@vger.kernel.org
X-Gm-Message-State: AOJu0YxrIMfQTc2vKpmmrbiL8ta4Ld9WevvG0zUnmlw75r2HaGq+XSLu
	kT5plIZynuowu6tQFdY7PD2vUM7UkeMsFM5a4xPTOfBkGckJ9nLbWt8L2AIetcA=
X-Gm-Gg: ASbGncsSJflxL47gyVMiQPDTYcKjAu0Chr8WqWiN1IeLUmpVGWkPTQLnOe2tsY2QY2r
	xiRcUcJuBDEno6RYJgNcDvUvyd0d7yj2BzWqO0rUX97ta/37/QupsdE7dhZ8B13spWJQIzcdHUq
	M0rs4GxpgK/be53Iv9zyREb8jAFlwRI720LQZ+99Zi+gtscqq4JingCAIG6lRXgfjZZFTrgDL0B
	sWaX0Bz5Xj/6C4DsdPpUgTMNXM6YuQJqvpST41zgQTxPXs+jZ5FRSu0BDojOw+Hqpd15qUciNv4
	4C8Ubw3clQ4+F6TXM0kTDTwAnaSsaN2T8Ke+NIaaaEQ+L3YHyM83MdnVYgDk9DnC7OEdK9wqj7M
	jbfAbTrNqo4loSou9TA==
X-Google-Smtp-Source: AGHT+IEZiItOnvjuwK4n71nVwqbzRSks9oEVy4kBUHEN1JIo6OdV/TXM2tKPDEjD88lmim4k1MJr7g==
X-Received: by 2002:a05:600c:c092:b0:43d:186d:a4bf with SMTP id 5b1f17b1804b1-4409c399b9amr18483715e9.0.1745498602777;
        Thu, 24 Apr 2025 05:43:22 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:a24a:bfda:f031:720d? ([2a01:e0a:3d9:2080:a24a:bfda:f031:720d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a01cdf59sm8421785e9.33.2025.04.24.05.43.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 05:43:22 -0700 (PDT)
Message-ID: <dafa92f7-1bcf-46a1-9a86-5b41e31ab7bc@linaro.org>
Date: Thu, 24 Apr 2025 14:43:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: add iris DT node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250418-topic-sm8x50-upstream-iris-8650-dt-v1-1-80a6ae50bf10@linaro.org>
 <asfwnyn5grm426vq5qatrxfffv3wmbuzx6266rblanzqepffzx@7773dcxfaqe4>
 <571b6484-d3ac-4aca-a055-c143f7e4a5dd@linaro.org>
 <i3kzq27v2cqhyuyqjq6dll4h6u2hjl5kpbws3qioe3lzarkhnl@oz7gzssnx7kq>
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
In-Reply-To: <i3kzq27v2cqhyuyqjq6dll4h6u2hjl5kpbws3qioe3lzarkhnl@oz7gzssnx7kq>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/04/2025 13:17, Dmitry Baryshkov wrote:
> On Tue, Apr 22, 2025 at 09:07:41AM +0200, Neil Armstrong wrote:
>> On 19/04/2025 01:05, Dmitry Baryshkov wrote:
>>> On Fri, Apr 18, 2025 at 03:20:35PM +0200, Neil Armstrong wrote:
>>>> Add DT entries for the sm8650 iris decoder.
>>>>
>>>> Since the firmware is required to be signed, only enable
>>>> on Qualcomm development boards where the firmware is
>>>> available.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/sm8650-hdk.dts |  5 ++
>>>>    arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  5 ++
>>>>    arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  5 ++
>>>
>>> I'd say that these are 4 commits.
>>
>> I could make 10 and still be coherent, but do we really need 4 here ?
> 
> The usual pattern was sm8650.dtsi + one for each board.

For big changes per board yes, I still don't think we need separate commits
for boards.

Neil

> 
>>
>>>
>>>>    arch/arm64/boot/dts/qcom/sm8650.dtsi    | 94 +++++++++++++++++++++++++++++++++
>>>>    4 files changed, 109 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
>>>> index d0912735b54e5090f9f213c2c9341e03effbbbff..69db971d9d2d32cdee7bb1c3093c7849b94798a0 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
>>>> @@ -894,6 +894,11 @@ &ipa {
>>>>    	status = "okay";
>>>>    };
>>>> +&iris {
>>>> +	firmware-name = "qcom/vpu/vpu33_p4.mbn";
>>>
>>> You shouldn't need to specify this, it matches the default one.
>>
>> Hmm ok
>>
>>>
>>>> +	status = "okay";
>>>> +};
>>>> +
>>>>    &gpu {
>>>>    	status = "okay";
>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
>>>> index 76ef43c10f77d8329ccf0a05c9d590a46372315f..04108235d9bc6f977e9cf1b887b0c89537723387 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
>>>> @@ -585,6 +585,11 @@ vreg_l7n_3p3: ldo7 {
>>>>    	};
>>>>    };
>>>> +&iris {
>>>> +	firmware-name = "qcom/vpu/vpu33_p4.mbn";
>>>> +	status = "okay";
>>>> +};
>>>> +
>>>>    &lpass_tlmm {
>>>>    	spkr_1_sd_n_active: spkr-1-sd-n-active-state {
>>>>    		pins = "gpio21";
>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
>>>> index 71033fba21b56bc63620dca3e453c14191739675..58bdc6619ac55eda122f3fe6e680e0e61967d019 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
>>>> @@ -824,6 +824,11 @@ &ipa {
>>>>    	status = "okay";
>>>>    };
>>>> +&iris {
>>>> +	firmware-name = "qcom/vpu/vpu33_p4.mbn";
>>>> +	status = "okay";
>>>> +};
>>>> +
>>>>    &gpu {
>>>>    	status = "okay";
>>>
>>
>> Thanks,
>> Neil
>>
> 


