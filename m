Return-Path: <devicetree+bounces-19533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7247FB471
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 09:41:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4CBA7B20F5F
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 08:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC79114010;
	Tue, 28 Nov 2023 08:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dCW47SZW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B6FEA8
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 00:40:53 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50aab20e828so7359714e87.2
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 00:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701160852; x=1701765652; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LVRiyNGDErI9XTI/vrVWZOiT2Pl7o4YcTccYSefpKSA=;
        b=dCW47SZWZGkfpXhqKEPXYhLvhfut8wIjMj6c5KcG5KWfwWvOdhAL1X07YsPf8jpjhr
         wGbuFU1BruV/MM5YyJjcBJL9Ni9CFQ7surNJGDCw2n0sxodXJxACYLwxPKrhg/W7LRyc
         GBuYoR9nVB+d5BsdhVyE2mWeBgwhnr53AHkQ0HzGFVCUAyVLx/sX8Wo6NJBIPyEKCIg1
         bEIfjupqwC8OiaGTy3cnvKfVj9RHG9/RenPzxRozDvSFcBwaDXIJKemjPNZEU4i3qViI
         sRMpEquetEoM1DjxOx0ehlDJcLOi4Ymh7FQS2+4ciD91eC/L2pftj0QTITt+ph0cIXYJ
         JxaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701160852; x=1701765652;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LVRiyNGDErI9XTI/vrVWZOiT2Pl7o4YcTccYSefpKSA=;
        b=fpbj9gFznyyS8cVpSHB3eVHGPJFyyHah85tBPfUsgn5BDakGCmspFLuFWnuDm1eGV6
         gRaJOTNNC19x6QmzKNxZOP9XWHiMBnawainUHxAuR5aBRQ6qJC2kGZW7bi2F3svxP3vO
         RQYoF2KCu7ybSZ0gRkcjAX1HLQV+kHPz/kyR1nlFEStWXnmZ7H2T+XlQHEPfbwoH9W+i
         mv00yugeWAvjviuvTFZVc6uqB7h3SJPOHpX1libo8FDVXbVjrloN/57XIrDeKQlinpnC
         o8g7tTMvsCXESznVjcwngf7LGbQbKdxFHZYT6E6QFNjZ/eS+Dfxx+AqAV+8r3l3dvdsG
         5Fkw==
X-Gm-Message-State: AOJu0Yy5gscKI+JiAaha8JBaVInDTT7TVKGV+/WLA70wJzF6lD2sJStz
	s1gWCByWGhfNF/JpVqPtX3p1rw==
X-Google-Smtp-Source: AGHT+IGikPt0H0KS7bN45FwdgyQ2apyHZnpUKr+WFCTNrHwjt6MeMhNgUKMLjTFcdyy/QtaeJhTJgw==
X-Received: by 2002:a19:8c56:0:b0:50a:a8c0:2ef8 with SMTP id i22-20020a198c56000000b0050aa8c02ef8mr7932789lfj.43.1701160851719;
        Tue, 28 Nov 2023 00:40:51 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:eada:f40e:7ab3:2afe? ([2a01:e0a:982:cbb0:eada:f40e:7ab3:2afe])
        by smtp.gmail.com with ESMTPSA id q19-20020a194313000000b0050a78dac3fasm1795027lfa.12.2023.11.28.00.40.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Nov 2023 00:40:51 -0800 (PST)
Message-ID: <4680cf22-a567-491b-abc0-735a2174bfc9@linaro.org>
Date: Tue, 28 Nov 2023 09:40:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RESEND] dt-bindings: iommu: arm,smmu: document the SM8650
 System MMU
Content-Language: en-US, fr
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231128-topic-sm8650-upstream-bindings-smmu-v1-1-d330854170d4@linaro.org>
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
In-Reply-To: <20231128-topic-sm8650-upstream-bindings-smmu-v1-1-d330854170d4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Will,

On 28/11/2023 09:37, Neil Armstrong wrote:
> Document the System MMU on the SM8650 Platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Please ignore this resend, I forgot to add Rob's Ack.

Thanks,
Neil

> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
>   Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> index aa9e1c0895a5..157de0d0a24d 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> @@ -56,6 +56,7 @@ properties:
>                 - qcom,sm8350-smmu-500
>                 - qcom,sm8450-smmu-500
>                 - qcom,sm8550-smmu-500
> +              - qcom,sm8650-smmu-500
>             - const: qcom,smmu-500
>             - const: arm,mmu-500
>   
> @@ -475,6 +476,7 @@ allOf:
>                 - qcom,sm8350-smmu-500
>                 - qcom,sm8450-smmu-500
>                 - qcom,sm8550-smmu-500
> +              - qcom,sm8650-smmu-500
>       then:
>         properties:
>           clock-names: false
> 
> ---
> base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
> change-id: 20231016-topic-sm8650-upstream-bindings-smmu-7d52c88bc6ff
> 
> Best regards,


