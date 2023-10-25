Return-Path: <devicetree+bounces-11801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C737D6A68
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:52:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76CBAB20BF0
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A23121102;
	Wed, 25 Oct 2023 11:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MQwwlBxw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E4811732
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:52:30 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D21513D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:52:29 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4083ac51d8aso43788995e9.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698234747; x=1698839547; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fj504wuC3Dwqo3vNkKSGcYzf/E6ixVzKhJmk91M1w1o=;
        b=MQwwlBxwNflt+h+hTHKOfuv5vAbCZApL3ac3/JxUms0vv5sWtV1DlXEtqW93Sx2xQg
         xtTjkUl34Rx1UcqK3SFAzz0hu3j9qJ+6/nsk3e9PPPIzPp8cR7JZbQR0TtQIQuLZTxDR
         /ElfQMAeKVr6K7DAQMbQm+DIwfZaRLrW/Y39Z1xEvLF5CX/rJEmSneITFm4/5FXUKsnD
         xrhQmsqS4uE8H7oqaIia+wk7y84LuDb/pwKhnn/OSYtw1RAONs9RtPCesUw1bFFJYUWh
         SPNv2m2pbDBar5QhBSPrnQ9PAdjFOJWwgw9lyLZ04pNOpN+uqP03GmpF2qmDzVO1OZK8
         a11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698234747; x=1698839547;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fj504wuC3Dwqo3vNkKSGcYzf/E6ixVzKhJmk91M1w1o=;
        b=Gknf/X9ShMEfWWZBDDswuj3m9fvgGlpB3dXU8S2jrHjs9Mv/u8r4um81dA6C7dICnC
         ZSMcASFjuFoCSVritgvY2qPGWgoZTfm8+/SZpx9U2/K5mYjnAc1JJyMV0OuFGuASvEW0
         4p/3GfCyPaMUpBSurzI/7IRbVShoHiqBPprmNLtQd6HustlqE8x9FVZxRSZbYF5sMoYN
         aiNjti+dDe0SI/S14LlMZmO8E7vOlZ2V6LLihYcigJ0ZbvcuYG3u9neDDtvMJKR03leP
         1X5PldcNdkrE7P1GYe0EOhIrQmrSsRk4brnFV6DLCmidBA66cT4XLiGM/DEd18haLGli
         T2hw==
X-Gm-Message-State: AOJu0YyLUK9BkfDCgJrzRa7E51GMiFPFwfRExMHkFH68TcdQ0KRuS35R
	O7h8ExY3jpD6hn9pRPT5GBTbUg==
X-Google-Smtp-Source: AGHT+IHQ3Kk6NsfCOZcRhIUC6XyCzOdFpGtlLbNAI7/Gh3FcSfjFJNf5RpSzNxyecS61/Z0scYNKVw==
X-Received: by 2002:a05:600c:4444:b0:408:4120:bab7 with SMTP id v4-20020a05600c444400b004084120bab7mr11427554wmn.15.1698234746863;
        Wed, 25 Oct 2023 04:52:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:4b03:ec74:6374:5430? ([2a01:e0a:982:cbb0:4b03:ec74:6374:5430])
        by smtp.gmail.com with ESMTPSA id u1-20020a05600c210100b004068de50c64sm14201938wml.46.2023.10.25.04.52.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 04:52:26 -0700 (PDT)
Message-ID: <48e2bebc-4f09-4a1f-a9a8-3953523146b8@linaro.org>
Date: Wed, 25 Oct 2023 13:52:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC 6/8] arm64: dts: qcom: sm8650: add interconnect
 dependent device nodes
Content-Language: en-US, fr
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
 <20231025-topic-sm8650-upstream-dt-v1-6-a821712af62f@linaro.org>
 <247f2ec2-c400-4d85-ac6b-2fd058989857@linaro.org>
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
In-Reply-To: <247f2ec2-c400-4d85-ac6b-2fd058989857@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 25/10/2023 11:10, Konrad Dybcio wrote:
> 
> 
> On 10/25/23 09:47, Neil Armstrong wrote:
>> Add Hardware nodes that depends on an interconnect property to
>> be valid.
>>
>> The includes:
>> - all QUP i2s/spi nodes
>> - PCIe
>> - UFS
>> - SDHCI
>> - Display
>> - HWMON
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> QCOM_ICC_TAG_ALWAYS would be nice.. (see sa8775p)

I'll add those,

Thanks,
Neil

> 
> [...]
> 
>> +            /* Forbid SDR104/SDR50 - broken hw! */
>> +            sdhci-caps-mask = <0x3 0>;
> Have they *still* not fixed that?
> 
> [...]
> 
> There's a whole lot to digest here, but I don't see anything
> obviously wrong..
> 
> Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> Konrad


