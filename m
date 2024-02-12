Return-Path: <devicetree+bounces-40791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ECD851668
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:05:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F11A1C2365E
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 14:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67664C622;
	Mon, 12 Feb 2024 13:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n/rmhWho"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC924A9BF
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 13:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707746128; cv=none; b=XUTrD/Z0Tps5WMxMuRxnYkNLC9XUS3Jmcb43wdCiKHWw4cqIp4beDWDiAelCskAf8pmUsTmi072WMKD2ZRGrgzPHfxrJbUUPH6cDMbBDeMm/2dFd/3RqM+MaAKsT2CkCCOO/uyb22lfVzv9Mc7AFEYFOMufO61zN7UMrecXS+P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707746128; c=relaxed/simple;
	bh=Iumxg7dOyROr9n3zhgwuZOr7k1xFCvfSz6tj70u8jvo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=hF2zMTDZbU0mZj9RPalgB2j7mVhutq0XWVN3/xFzO8/cJDP+Sa/qbeFMqJ+v3TclleujAoJGqbcW2dwtz/8MKWJ2VzlUwnbA89MkfPRZsWoi0mK+dLFNt/MClJhrhF6551rr2dlkx+t9MXImgFhMKyDJBN/IDXfUWvpxD91Xumw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n/rmhWho; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33b7e136a48so656287f8f.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 05:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707746125; x=1708350925; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rPZItga0K6a/d3qYmA5SX0F5b4igv+uCIQlz3f+nZfg=;
        b=n/rmhWho+ZkwClaV3F6JxsM9K6ONKIhjvkf5HMnUQDQX7AUHUmO799TqR2fCe6UxIx
         0Mpe4TCQDT8DQ/lshUJq4mCKPjM2UzqWvEx0tqX/KlGgdtDAYL0yBKddLi/XjHGuxmRd
         CtEcPdLarFwaUzcqQnDxCsdQ9wK1itgA0GVUkDHQX3vFfQhMa6bYf3PCq++R5E/wpUwB
         t8Qz6dP+gbEBbok0Q63Sy6d+oV4m6VdmM3hbNMzeaYiyzIcwHpfnounolwi1nu8dvAsg
         TFJQA9Nzex9BykX8j2fJnwRH9gXKX84YShNuQJAbANCrDjRrR1HdWeAC2n8lGwC0PNbP
         0sxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707746125; x=1708350925;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rPZItga0K6a/d3qYmA5SX0F5b4igv+uCIQlz3f+nZfg=;
        b=pWFGafwKFkmMo53h1Kg5K+Y8lMmYsZysN5L3EVkRy3iSo89fbseZSJ+Bpp6CdonqSJ
         PoNGusqPJvogYxlGPsR5uCclZL6qklPTvAmzI0QPhc3INjMnz+ybqeKnQKTa62arHB6q
         x7Gy0MmJhKuOkx39zQxbfxZQc5FwIbxFBcPbdcpoCA3dITZsrGY6zw0hYB0lI5Zvh0MS
         PMWJLR2NubCUSKOUXHQEg4bL4AzfGty2pFCJ3rcmUwMvu2/2QI1ZViAYXCmzMjIpRndz
         NHX1yG/XYpgVaP+x/SBdIikhqhbROOcyRbTgKGCmn7m2JVGX9Msrp8Mx4WE2fdPpC7+q
         wqDA==
X-Forwarded-Encrypted: i=1; AJvYcCVy0IcUeLUtPP0QsWioS+n3KwY7dltJdXhfvO6C+cIN3WdvR5onpQxa2lJHKU/c0xRe9Tal1X3s1OyiuFBsIq2yCYdrcNqKgSE75w==
X-Gm-Message-State: AOJu0YxryB9NYdIgcv2iDUsY28cIRNZRN3wFOoB6KP4djJcKzYCL0m7y
	z/v71sjvtP3Q/mYrIvpE4z0n9B8POptKG0Tjo/beN/mk6bxwhZjTFLeSY8/NH24=
X-Google-Smtp-Source: AGHT+IG7KY1/dGz5O9hkR94hPzKo0X0u3+e+5j1NEGuM5qVmSOXQKof4lVhHGwJ6xxSDf7MW8jNfAQ==
X-Received: by 2002:adf:ffcc:0:b0:33b:72f2:2283 with SMTP id x12-20020adfffcc000000b0033b72f22283mr4536501wrs.17.1707746124778;
        Mon, 12 Feb 2024 05:55:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVkTD1yETNCUWfYwYCnpQdU5FS7SXa7H6wVPKrdy75+Sc7wy7dhEcOGBxivwS8upXzw9QSUx1H9UjRq76n9r4PVgnrWMUd0VH06GG/8U7GJqcHc4krhSmF60TYGvNcqZKM2WQAwv8Vdc5vKz0Hu8ODUgi998rEPcD0aVet908xw7RzW952PBXlzbOu2Mq/ZwM6T1KTyv0+yzmAshAyjWt5P5w3Cw1NttKbn9pqMnHM5B+jFiCT+uGYyDv64f++9FIU/DGFlelj6KCV7KRzDCOZKYvioTfwYoJB1/Ma3peqWGRWx9l8pwZmCCJNG/DzYs/rXm981E00zEJyiBU01WMVnC3jBdozdPWWJHWiN9SfxQgYM7EyysBMG5PXSHi8mXqwToUWJRQp2eBRsqykQFViyHIp6+U8sBRd8/ZvuWqKGGa6+wPHe+zGdGr5LC/mcniH936J+EmU1QfN5U58z4AFBB4xY9npKCEce7xDA9USySSod4bDRyLme8XB+B4NkRyDcy8RjOfZtLcXGr8TkoRulZkRsFeM2b8W3HSaEyKynPjz4ZNVUYa2enZUNXWTTaz668GOR/PFgmXcQfKxGFSnaUAdoS+V1aYmoaqJB5+Yle732nfv8RrVmngYZjSDpQvET2DSQJXhUC9EiX+7WxVKZzPiRTzFX7pibS2TbDnOZDnjXIFUDhHUVA6FeyOAfJ0s2vUo1wN7+atYwCOznpyE7BMywwfp+1d4uZNLhJ7icFqrfeDgVC6BtcUw+iM4d5nnuoxcsz0p1DQj7crxYWZ1zkyHt4ZS9MAgeWZm1qLqhvcfyx4RzTfF8WciP
Received: from ?IPV6:2a01:e0a:982:cbb0:fcee:f026:296d:135f? ([2a01:e0a:982:cbb0:fcee:f026:296d:135f])
        by smtp.gmail.com with ESMTPSA id r10-20020a056000014a00b0033b1c321070sm6865830wrx.31.2024.02.12.05.55.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 05:55:24 -0800 (PST)
Message-ID: <575f4d10-6022-4e9f-9b0e-221ea2d20fc6@linaro.org>
Date: Mon, 12 Feb 2024 14:55:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8650: add GPU nodes
Content-Language: en-US, fr
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Clark
 <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev
References: <20240212-topic-sm8650-gpu-v1-0-708a40b747b5@linaro.org>
 <20240212-topic-sm8650-gpu-v1-4-708a40b747b5@linaro.org>
 <70caf0d0-28f5-48b9-b10e-5541488dd982@linaro.org>
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
In-Reply-To: <70caf0d0-28f5-48b9-b10e-5541488dd982@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2024 11:50, Konrad Dybcio wrote:
> On 12.02.2024 11:37, Neil Armstrong wrote:
>> Add GPU nodes for the SM8650 platform.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 169 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 169 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> index c455ca4e6475..f6f9e603fb2f 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> @@ -2582,6 +2582,131 @@ tcsr: clock-controller@1fc0000 {
>>   			#reset-cells = <1>;
>>   		};
>>   
>> +		gpu: gpu@3d00000 {
>> +			compatible = "qcom,adreno-43051401", "qcom,adreno";
>> +			reg = <0x0 0x03d00000 0x0 0x40000>,
>> +			      <0x0 0x03d9e000 0x0 0x1000>,
>> +			      <0x0 0x03d61000 0x0 0x800>;
>> +			reg-names = "kgsl_3d0_reg_memory",
>> +				    "cx_mem",
>> +				    "cx_dbgc";
>> +
>> +			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			iommus = <&adreno_smmu 0 0x0>,
>> +				 <&adreno_smmu 1 0x0>;
>> +
>> +			operating-points-v2 = <&gpu_opp_table>;
>> +
>> +			interconnects = <&gem_noc MASTER_GFX3D 0 &mc_virt SLAVE_EBI1 0>;
>> +			interconnect-names = "gfx-mem";
> 
> ICC should be unnecessary

Ack I'll remove

Neil

> 
> Konrad


