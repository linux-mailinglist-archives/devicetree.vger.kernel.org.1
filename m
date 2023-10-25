Return-Path: <devicetree+bounces-11626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC807D6408
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:51:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 981AC280E02
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F5001B298;
	Wed, 25 Oct 2023 07:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yG8oqy0j"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471F218B08
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:51:00 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F6B3D47
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:50:57 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40839807e82so3117795e9.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698220256; x=1698825056; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fHCbt3oIyBZTNzG0a6SA3gqBM3qic8b1PW/OzYT0hTY=;
        b=yG8oqy0jJsqkMHIHnQ5LVSHcF2PXJvrJ1rX41nQ8q/vRrXDy+7EUGGB2z9GVQpXtcX
         zeFSo9SHCZazLALnxrghDqJ0RLW1c4dT69fGDgNdVR9ctJzz50qFau5ZJ38yLYfdzeBw
         WNyF6Zi2Lq1g7MM+fhfujMDkpjnNb5Z9ojd8v2TzaJtXrA3UaZ/Mva6NOUGZdYgTPp5V
         vrJ0ZIK9jGPC3vNIovvCxh8GRcnt4vfuqIS+up7EPdlYU/KHnMs0/LbcerZt+KvvUPGN
         gIyaUISHvpNU1ru9dN7nF7/JN9eWw/xPRcvuYAzIEOlRPJBorH6T/0YhG0RS0r3UdsAj
         kTHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698220256; x=1698825056;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fHCbt3oIyBZTNzG0a6SA3gqBM3qic8b1PW/OzYT0hTY=;
        b=DsfprHxKmpnMLUsu/4fcJccq8DAfLFPPHXh2lUXFuzsXCCi8Ct4Eh1ljGX5TNW6Bwr
         6QvD+IzMrxK49BgKMuMoZMnB8nhWY1KGP17MHn3VfvRBScUIPLQCLQ6oouFGOJ9ZtPmK
         HxS5xVgqRbb4kkBMqbDd3IVV1X2Upo6bsxm75MFh7j1122SQY8Ke3oC7+GHXGOy4svpF
         R3Xz2Yx6Opm7A3g330Us8CUnmr8wsmPHR4U53RD2D2FH0VzMNqIcHeGVXVWUyjQjRMLb
         afoHV86gBYj6h4YO3djUBR8JhqCjlt7xM8BUnKfiFxrMra47yGSIpaz4LpasxLfXmuzs
         2Buw==
X-Gm-Message-State: AOJu0Ywq+Y4wYcptpFNqg4uxhiEZROajjxMeiii3VeAuKBba+l2Mrc2M
	rBwPnQ9RlXYh7v0+D6Psb/6lC0BjVEg6P4SwbYy+K28v
X-Google-Smtp-Source: AGHT+IHkFgkIyncR5qpiPGCBrd1mZZZPQhI0m/zUCrlGiixh6mKna/bq06QxEiecV1w1LIBTsixxow==
X-Received: by 2002:a7b:c4d8:0:b0:408:36bb:5b0c with SMTP id g24-20020a7bc4d8000000b0040836bb5b0cmr16035281wmk.7.1698220255693;
        Wed, 25 Oct 2023 00:50:55 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:4b03:ec74:6374:5430? ([2a01:e0a:982:cbb0:4b03:ec74:6374:5430])
        by smtp.gmail.com with ESMTPSA id i1-20020a05600011c100b0032dcb08bf94sm11538347wrx.60.2023.10.25.00.50.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 00:50:55 -0700 (PDT)
Message-ID: <22441cdc-33d3-4303-9deb-cb91e43594e6@linaro.org>
Date: Wed, 25 Oct 2023 09:50:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: dma: qcom,gpi: document the SM8560 GPI DMA
 Engine
Content-Language: en-US, fr
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-bindings-gpi-v1-1-3e8824ae480c@linaro.org>
 <CWHCDVXDDU74.3U8VFCO1HHIDU@fairphone.com>
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
In-Reply-To: <CWHCDVXDDU74.3U8VFCO1HHIDU@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 25/10/2023 09:29, Luca Weiss wrote:
> On Wed Oct 25, 2023 at 9:25 AM CEST, Neil Armstrong wrote:
>> Document the GPI DMA Engine on the SM8650 Platform.
> 
> Hi Neil,
> 
> The subject of this patch and a few others refer to 8560 instead of
> 8650. Please fix :)
> 
> * dt-bindings: dma: qcom,gpi: document the SM8560 GPI DMA Engine
> * dt-bindings: usb: qcom,dwc3: document the SM8560 SuperSpeed DWC3 USB controller
> * dt-bindings: soc: qcom,aoss-qmp: document the SM8560 Always-On Subsystem side channel

Thanks for noticing :-)

I'll wait some time before sending v2, a burst of patches is enough for a day !

Neil

> 
> Regards
> Luca
> 
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>> For convenience, a regularly refreshed linux-next based git tree containing
>> all the SM8650 related work is available at:
>> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
>> ---
>>   Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
>> index 88d0de3d1b46..0985b039e6d5 100644
>> --- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
>> +++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
>> @@ -32,6 +32,7 @@ properties:
>>                 - qcom,sm8350-gpi-dma
>>                 - qcom,sm8450-gpi-dma
>>                 - qcom,sm8550-gpi-dma
>> +              - qcom,sm8650-gpi-dma
>>             - const: qcom,sm6350-gpi-dma
>>         - items:
>>             - enum:
>>
>> ---
>> base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
>> change-id: 20231016-topic-sm8650-upstream-bindings-gpi-29a256168e2f
>>
>> Best regards,
> 


