Return-Path: <devicetree+bounces-206469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8D4B2C5BB
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:36:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D741F3AD80F
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351EE31E11F;
	Tue, 19 Aug 2025 13:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KESBohmF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFB832A3CA
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755610212; cv=none; b=J9M65LaB1/Ryh/m1k/vsm2DbQZiiumKF8LQn8yjVuYEAl5gD70LLLE1xlzzVAtYk5QFdYgq2MkU8NfeMAVzBpNlSYHYhMIk0DAycdTSzdUqjB+PqZwPHjyXO7CfVm95wuYkktj16FEmse3Zz6PkwqxHBkgfqnT4dddJ+Dgt9iQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755610212; c=relaxed/simple;
	bh=2x+nr/skuUY4GRQ7BJZyYRfCE9ow4uQQSWbYeTrmKMM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cYRRste5lOkWU8l9sp0w4OEWaYDI7P2LImcxZEn9LujqNusCcFwwaJHVLi+54j1onSFO3we73MiZm9Fbk21k6TUd8yCJKq314dCjmYxbcMBwjz7AcibeMNUTTFgbApw5fFcYB4D4GdVbDAPF7UB/RXrEXasYnXOqCpFur2OUMn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KESBohmF; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3bb2fb3a48aso2039941f8f.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755610208; x=1756215008; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=knBJfeY7SrNVNfBdfMYQvBglp12XKu8xx5P5bXguUyg=;
        b=KESBohmFCMGE4wQKy14+BkPAp+cerkvq4Y3UUCqz7nZnJyv+ttF7kK6kWGy5cNVVv9
         mOteHVfPpqPkMosTjw+X/0Ddxg+nIFA+mVCoC8YhUhtvhwXzF8Q/JmPBRnHFgkjsLjQ2
         xvQeOxbQapfh0G+nLnTQXiG9iCRFplL0aLJgQLfGovvbBXO4vVoB6F+dvsfR6Rh4Sn8L
         l7fC1q3WtunSRawWiKzfq0me2QfOHn5Bqlg2c5K8Tub/62bD79nb6VtNFwBWKDEdo1oA
         NQ0d2T6jPDRtNYXspn1kFlZTMLAx8Wb5q+risrUktihQUgfTgOv2g32IvL6HEAi5sQ/U
         xCWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755610208; x=1756215008;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=knBJfeY7SrNVNfBdfMYQvBglp12XKu8xx5P5bXguUyg=;
        b=QIkBG/xkEMBSRxfiXFiafjWOxAoleY1+1cxoC1wPy5hknT/IsuFx/LFZTpRg976bFx
         Bn50Xgt3yOiVFYKRMasMzgY5izNAzQaOLQ3DwsvQIf8mFjDx2KO3v5bp8kLhcdx2GYy/
         rWJnSfTCrrl/hz0GM2PKbDqg6C0GwVJQuUyiRI2gIfCUSVlsqrjZGuKhTIsWExh9Uicu
         7qIaE8Ofm+rmEvgNdSXlPivDnX/lOUICQUEIZiPcu3daW1zqaG6qGn9GiB+rzk1dpzPM
         uV8tMTw2pLnJWXZCtq82UnWqombIuwn2abQBi9VKOQNGTQrmfC7W+GeXDoOne5YQSF+x
         cHwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVSYQDGpm+SiM3h3uYg7wUCpEBZZ3zpNBbQ2poChMX0N2KzTW3mgQ4/206fv1Mtd+cr0BqbLAD+FUT@vger.kernel.org
X-Gm-Message-State: AOJu0Yyemmfi/ZqcP7arRRxhVzR+V2uBEdE/u0bXdeXH5l2biZE9dVNa
	FqPrknaPZVnNwVaHnG5zIl3PMso6O0TNn2zJD3x8pYTRSYHa7hxGbGcVPae2STTvFNU=
X-Gm-Gg: ASbGncsc+QASZ/7dzVfJn5ljLLlssyljp3AWN4V2X3zSGcbOGdCRLimiYbzTy8hN2DW
	IYHamJ5Kac440PUqRAYKuNSxLuYhmoxj73PlVUzJoHIzQYTCu/zbV3mqdfWGRaTMfUoZG7vQgKH
	cQqwA9wAkS9ZlIb1Cvpwshnz7fvMUxmy1pCjp2ZC63i5Lwc7G66eyAVFu6y6SAfAEb2e2w6PXiI
	9UQT0gH6o3QHTfqRHDIxDnbqtaG+YmHSazCO1GFkS4wXts75R23fFnfa7HduuhOc2a5LDhBCV6q
	egG6o9GT7A27xzTKNfFxKekChRO+gQ8FmaC5mJRUZSk1swEyxJloziplfXxTFSkcnf5adIVbaWn
	hP72LVdysbPjpr5uIPyOUrhsJrrSYXdl6uMKoRyTZzfDM2eo+DtgwM3YJ0Gl6L/KH3KDqho8l
X-Google-Smtp-Source: AGHT+IEW6PEt5c5zZhNLZ/Pcs71M1NCr3MeIFAqMJP3ldCHCFgbCV/V52lZmgSnXSl7zss275nsd2Q==
X-Received: by 2002:a05:6000:22c5:b0:3b7:974d:5359 with SMTP id ffacd0b85a97d-3c0ecc31562mr2253335f8f.32.1755610208206;
        Tue, 19 Aug 2025 06:30:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:e7a:79e6:53ed:ce35? ([2a01:e0a:3d9:2080:e7a:79e6:53ed:ce35])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b42a908d3sm44412925e9.22.2025.08.19.06.30.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 06:30:07 -0700 (PDT)
Message-ID: <0257f893-fed8-4ee9-ad4e-cdcdad8b5c85@linaro.org>
Date: Tue, 19 Aug 2025 15:30:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH V4 4/4] arm64: dts: qcom: sm8550: Remove SDR104/SDR50
 broken capabilities
To: Sarthak Garg <quic_sartgarg@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 quic_cang@quicinc.com, quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
 quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
 quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
References: <20250801084518.2259767-1-quic_sartgarg@quicinc.com>
 <20250801084518.2259767-5-quic_sartgarg@quicinc.com>
 <69f2807c-9a28-4b31-97cc-2756f0ab9fd4@kernel.org>
 <c7e36755-9255-4209-9d53-20077bd1d3ba@quicinc.com>
 <8b023e56-435b-43df-8b15-c562a494e06f@kernel.org>
 <ab5d3811-9fbf-4749-9463-4457fbf50023@quicinc.com>
 <4091c488-996c-4318-82ad-c054a9ef5a22@oss.qualcomm.com>
 <a93fb5bf-1fd5-4e00-8338-b8608a9ba8fa@kernel.org>
 <f2f13082-20d6-4f22-8dfb-f11b01cd6706@oss.qualcomm.com>
 <dda9a2ef-5b86-4883-8347-b5ccf25e8d5d@quicinc.com>
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
In-Reply-To: <dda9a2ef-5b86-4883-8347-b5ccf25e8d5d@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 14/08/2025 09:15, Sarthak Garg wrote:
> 
> 
> On 8/13/2025 5:37 PM, Konrad Dybcio wrote:
>> On 8/13/25 1:56 PM, Krzysztof Kozlowski wrote:
>>> On 13/08/2025 13:21, Konrad Dybcio wrote:
>>>> On 8/13/25 1:08 PM, Sarthak Garg wrote:
>>>>>
>>>>>
>>>>> On 8/5/2025 2:55 PM, Krzysztof Kozlowski wrote:
>>>>>> On 05/08/2025 11:19, Sarthak Garg wrote:
>>>>>>>
>>>>>>>
>>>>>>> On 8/1/2025 2:32 PM, Krzysztof Kozlowski wrote:
>>>>>>>> On 01/08/2025 10:45, Sarthak Garg wrote:
>>>>>>>>> The kernel now handles level shifter limitations affecting SD card
>>>>>>>>> modes, making it unnecessary to explicitly disable SDR104 and SDR50
>>>>>>>>> capabilities in the device tree.
>>>>>>>>>
>>>>>>>>> However, due to board-specific hardware constraints particularly related
>>>>>>>>> to level shifter in this case the maximum frequency for SD High-Speed
>>>>>>>>> (HS) mode must be limited to 37.5 MHz to ensure reliable operation of SD
>>>>>>>>> card in HS mode. This is achieved using the max-sd-hs-frequency property
>>>>>>>>> in the board DTS.
>>>>>>>>>
>>>>>>>>> Signed-off-by: Sarthak Garg <quic_sartgarg@quicinc.com>
>>>>>>>>> ---
>>>>>>>>>     arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 1 +
>>>>>>>>>     arch/arm64/boot/dts/qcom/sm8550-mtp.dts                     | 1 +
>>>>>>>>>     arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts | 1 +
>>>>>>>>>     arch/arm64/boot/dts/qcom/sm8550.dtsi                        | 3 ---
>>>>>>>>>     4 files changed, 3 insertions(+), 3 deletions(-)
>>>>>>>>>
>>>>>>>>
>>>>>>>> This will break MMC for all of the users and nothing in commit msg or
>>>>>>>> cover letter explains that or mentions merging strategy.
>>>>>>>>
>>>>>>>> Exactly this case is covered by your internal guideline, no? Please read it.
>>>>>>>>
>>>>>>>> Best regards,
>>>>>>>> Krzysztof
>>>>>>>
>>>>>>> Just to make sure I’m addressing the right concern — are you primarily
>>>>>>> worried about the introduction of the max-sd-hs-frequency property in
>>>>>>> the board DTS files, or about the removal of the sdhci-caps-mask
>>>>>>> from the common sm8550.dtsi?
>>>>>>
>>>>>>
>>>>>> Apply this patch and test MMC. Does it work? No. Was it working? Yes.
>>>>>>
>>>>>>
>>>>>> Best regards,
>>>>>> Krzysztof
>>>>>
>>>>>
>>>>> You're absolutely right to raise the concern about potential breakage.
>>>>> After conducting additional testing across multiple boards, I’ve confirmed that the removal of SDR104/SDR50 broken capabilities does indeed affect V1 SM8550 devices.
>>>>
>>>> v1 is a prototype revision, please forget it exists, we most definitely
>>>> do not support it upstream
>>>
>>>
>>> You should double check. SM8450 (not v1!) needed it, so either it was
>>> copied to SM8550 (v2!) by mistake or was also needed.
>>
>> I believe that the speed capabilities are indeed restricted on 8550-final
>> and that's why this patchset exists in the first place
>>
>> Konrad
> 
> Hi Krzysztof, Konrad,
> 
> Konrad is right — this patch series addresses limitations seen on
> SM8550-final silicon.
> 
> SDR50 mode: The tuning support introduced in this series helps ensure
> reliable operation.
> SDR104 mode: limitations are resolved in SM8550 v2.

I guess the state is the same for SM8650, it also requires the max-sd-hs-frequency.

I guess all boards with a level-shifter on board would need such limitation,
including most of the HDK boards (SM8450 included)

Neil

> 
> But still to avoid regressions, *I’ll like to retain sdhci-caps-mask in
> sm8550.dtsi for now and revisit its removal for future targets after
> thorough validation and testing from the beginning.*
> 
> Konrad suggested placing max-sd-hs-frequency in the SoC dtsi.
> Krzysztof, could you please share your thoughts on this approach?
> 
> Best regards,
> Sarthak Garg


