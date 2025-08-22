Return-Path: <devicetree+bounces-207913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8006DB312AB
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:15:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CA84A0349F
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC59226165;
	Fri, 22 Aug 2025 09:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QGKqcEWQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66D6635
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854142; cv=none; b=VI/N0xn8L1wQ+4+GqkORJzDBJscv1bOHaA4wx8J/tJbfVdAwg9CsAOumFekv/bswOjlussAHn/iatOHPAEt+85Gz1BLcDcomgRqTALyR2y6UjhxptZkvUDmjLRYJkRfk3bzEKdyL1MbvsE2r5KKHa9mUxhbCsM8sLTejiQIbyU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854142; c=relaxed/simple;
	bh=67quhyAVURtfXAvI5qZ+yhWFpelxcQR0uV33pnuuydM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=hubMRQF2NUKRETwBnW7Nl90nfVgEjGmXLrf/fgGb/dd6j2G/Lp+1xEfsOy1h3ITAde4f6R1mpj5duQltEH63P5ahL/RkRLCYV2ZyeI68t9tcws09aiW8elIAzX33BzrVUuTbenvyNM9y9UUP3AKdIs9+iyJlDRi6i82/VYlOqdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QGKqcEWQ; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3b9dc55d84bso1714732f8f.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854138; x=1756458938; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NGpPFRfpj+k+209KhRHwNeakdQDjhN17yXLode2Nb/4=;
        b=QGKqcEWQ4Mp1oN56nFADnvX76jSjdFUPAw6g8QlF5tRe3kb2S8GXhoSTlCvAEljntN
         dju+EE03Q0xNTzF6JUBknc6yu2ydDceMDGwFtIdicjM6Ri+ShdFtQYDl22DAFc6bXO3H
         9VkzRPFBxrx79ULBwOVGqeWEjAYbeqja/CN9+hgkxZULfwnyuuvMtRBcSnivn1udm7gR
         Gl5ZWB0/ZeP3WWjNomDuofbSUDzZ8NumFvCCV81FbGhJH7jVoCqIWZmlrllS8jqHDbsb
         bZp+032aiy9bsh62+HYd3SmW9kBqusDcNz57pcylkempBWISi+EX7ecAhPmkjJg7j6jc
         twPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854138; x=1756458938;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NGpPFRfpj+k+209KhRHwNeakdQDjhN17yXLode2Nb/4=;
        b=N9ToKffg2E+sByVJg1BPOubWsVJNJvnbTt64SMUbr25L/WyP1fUoEa4/KA2xNgmwLT
         NfV51bxodt9XbuUmAFQ9L6JbCle0lWwXvxTHJ3NG2EYl9Q9A+SsjWXSF46SrdHcgAO5F
         8SMp3QOjKlLqejAnD5Ha2HqimXUXTal1u/ObnAOBowEjF/OWg3uDKSxMIhqjqjHzn2wn
         Eu3hxkPONGsyxJ/6RAEBJ8a+IcMCZ0ZJrbGxhhB9PCPDR6yV/cOc+atQUvnIY+T/5lOf
         SHao3WaHzhGIqD4VYZcb95NGZ96s6EPBwW/njrMuu5tX4T07tJ6OvbVSauDcJsdLoAjt
         6vbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMw7i+vVXApcCd70M/WqWT1O31ilBk22iqr/81TDdckj2yMV/ULNHU2lROJA2Hkfoo6s5e38S38Vkb@vger.kernel.org
X-Gm-Message-State: AOJu0YzP7PWE1A3ndzevtJSgNVsj7bM6Hs7Bib/UKE62uWLicPjEwa/x
	tSntz97Rz821PBxNSKJrl2hGiuGganpJUPpKIBGVXEsPrHJvsLchSOwlg7NBLoqNaGY=
X-Gm-Gg: ASbGnctqiQ4QOYpsxNxNzx1BZ9R3xlSQLEV0TF/gubIvxPkuARYKS2QHCaKPgEEq/I3
	+FuLDK3IO6KOAvpsx60kZjUStbyC7mtI2BWTX72+/mA+yL3F+6c+Er77wRBOKy5T9yZogn8pCpi
	yhY0MRm3giz0i19tEmT50uDkFmt25bVcb2Hyc5fohyeiOjJJ9aQiaELREEXck6j1oiI8jyt6I/J
	RShR9/TozJu+TInATcYrpIidfDiV6CKBm6L3Z4KgRBErwPMLNBj7xkOkruilvwMDuPZ2mOEPuMV
	VfJoTQJa7A6FJ+0cfHPRaRO/hSq/S3VgMrXsBpM78ZJEutRcmpKVChA+DJ/sYiLrd6c/74IpqYB
	tAOf5uk05V0ZG8a2ZHeeBh7qrzvGJ84XO/z87A+rOfleyh3dH7TlqdRvyy9EBz11YCUzVG/tg+F
	4=
X-Google-Smtp-Source: AGHT+IF6MiE5xPg9MihtExsD8an9MDPxTItFLL+t2cF0hyrhB6S/GPbejDFdhHauuLqGnFd5oYU4WQ==
X-Received: by 2002:a05:6000:26c1:b0:3b8:f864:2fec with SMTP id ffacd0b85a97d-3c5dac1706emr1452253f8f.2.1755854138179;
        Fri, 22 Aug 2025 02:15:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3dd7:7361:c101:6a77? ([2a01:e0a:3d9:2080:3dd7:7361:c101:6a77])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c26fce3930sm12091681f8f.29.2025.08.22.02.15.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 02:15:37 -0700 (PDT)
Message-ID: <0f64e926-8b9e-45ee-b635-d6aeb9c75d9a@linaro.org>
Date: Fri, 22 Aug 2025 11:15:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 5/6] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Taniya Das <quic_tdas@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-0-a510c72da096@linaro.org>
 <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-5-a510c72da096@linaro.org>
 <eaxppztxjggd7kdg3p5actz5rcsiy7czw7lnv5jrvnab26gxdj@pwmwlupaievv>
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
In-Reply-To: <eaxppztxjggd7kdg3p5actz5rcsiy7czw7lnv5jrvnab26gxdj@pwmwlupaievv>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/08/2025 12:19, Dmitry Baryshkov wrote:
> On Thu, Aug 21, 2025 at 09:16:38AM +0200, Neil Armstrong wrote:
>> From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>
>> Camcc requires both MMCX and MXC rails to be powered ON to configure
>> the camera PLLs on SM8550 platform. Hence add MXC power domain to
>> camcc node on SM8550. While at it, update SM8550_MMCX macro to RPMHPD_MMCX
>> to align towards common macros.
> 
> The last phrase no longer applies.

Ack will fixup

> 
>>
>> Fixes: e271b59e39a6f ("arm64: dts: qcom: sm8550: Add camera clock controller")
>> Reviewed-by: Taniya Das <quic_tdas@quicinc.com>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> index d4bffcc244c98e87464cb2a4075c21f3cd368482..54ea21e1778a7c104cdf6865f84a7f8b5a8691ca 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> @@ -3625,8 +3625,10 @@ camcc: clock-controller@ade0000 {
>>   				 <&bi_tcxo_div2>,
>>   				 <&bi_tcxo_ao_div2>,
>>   				 <&sleep_clk>;
>> -			power-domains = <&rpmhpd RPMHPD_MMCX>;
>> -			required-opps = <&rpmhpd_opp_low_svs>;
>> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
>> +					<&rpmhpd RPMHPD_MXC>;
>> +			required-opps = <&rpmhpd_opp_low_svs>,
>> +					<&rpmhpd_opp_low_svs>;
>>   			#clock-cells = <1>;
>>   			#reset-cells = <1>;
>>   			#power-domain-cells = <1>;
>>
>> -- 
>> 2.34.1
>>
> 


