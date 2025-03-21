Return-Path: <devicetree+bounces-159705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6937BA6BD16
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:36:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AEEA04817AE
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 14:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8DB21A256B;
	Fri, 21 Mar 2025 14:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yyAAOBZ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79671388
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742567701; cv=none; b=NJ0seSYPAa2rs3wXbrYS6dXQ8o30IRuBKFxLDY+Yh9ARF9eeexQhj6MGLSyxgpspGLs4nfh5I/qriTm+o0+0sVdyjKxm9ALlTSaS3D7FGmf5HlVau1KSuf+4iebZGlrkK9vk7D4AWM53+alQh+bzVcR4dgBYlt6PJskEvOnNmpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742567701; c=relaxed/simple;
	bh=wdjDpdPO8Gj3iUNrp1JNDGE5Incd6SFvzVMrI/5ClOs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=cYASmXLVa9A/dtczpPPFyCCbsr5J0aGenkVx0BtQmmUh1XdcNq6tUCk63GOqxtq5eoIDPL+jH/zrbO64Tu4QQ8EYZwg074HnhRksLpMptQQGyCf813JHi4KKkctsniKytuhz+1Xgf81KG4INvgtO4ax/9phaOxAM62MR5m2c8zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yyAAOBZ3; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so14410465e9.1
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 07:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742567698; x=1743172498; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y6Qr8QAI+Mok+bWdMsFd6M7n8U4F8tUmQSbLyZ4Fyg0=;
        b=yyAAOBZ3AI9wcESgOW/OECFFLfrbldRrEI3QfbzPvXE4deYCqJPNw6OyjLeqxBly3O
         wz08uVdMp5CrVbhpDObTTZDVBmLkN3rq0cFCs8vHWqZE8CBaB0CrRRzK6AmsCZ2QIz42
         9RjmJRpmmHzwAAlMvuKZqf0WAW1w6lNPGqufAFqamZ6Qsj47Z16OP+MY8hLAZVN8x3xY
         /XmY7Nouc7E7XdRh5HyQrMh5cD2wvqqENfmRDeH9yh8RJSk3UmTSDMIRlN4shZIFpAbD
         o450FJfSvEDIeSCFGzaCqhZeB+a69vFoKO36g81UD420vSiXwoLHNr61hbU8V8slBOFu
         DH3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742567698; x=1743172498;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Y6Qr8QAI+Mok+bWdMsFd6M7n8U4F8tUmQSbLyZ4Fyg0=;
        b=f+EGZlSNl9cAhVuxayErNX5ul7SQ/89P2axFr4HBmLE3s8koiPXQXqtbTIYiIDF71m
         qhDxqEKEuRNbHuh1rB93Wud6WxbbVT/TOCLPakaluQX0AOCcM3Cw5TfmTHnfWD+oZr4L
         ZQl02x6iFX/bXYu4NjATczdK4RWbNeS0fN/z+C7DSXarS2M7le47KYMQBrjxdRhoLO/n
         VO0a1fR1BNNkL/e32f5mJ8MVVFLXzE8dBRbL5s9EML5Vt2x5hIRhzXBPgwaAuLJOJJCu
         pm9p/4o56/teTt1X1yTxauM/hgVMFSH2NwGqZ7FBK63Bl0OIXuqI93mXr/37uGb8zoro
         743g==
X-Forwarded-Encrypted: i=1; AJvYcCUsCzIZ4oWlcnAAhSSs8osjjF1ahhoIbKxjVXcOOlgdIGiEKYCGEVd9fLH798EpoTWDTe4kkMDu5b+d@vger.kernel.org
X-Gm-Message-State: AOJu0YwL6qW9r/2uUiAl1UCkhADykPkrKAIfSF49Da0hJN2wk9lF77g9
	BFPg4vjHMcaTtRBt3c3dghyaHNW8MbIizLWLCN/PqpUxL0Z1JY9D9IX8MDlwb5k=
X-Gm-Gg: ASbGncu+bFBaFyCgGJwcPi9GP4PhZoZN2wrtdh426etobX/MdQdTyKaPm6jt5r9txQl
	1vQ9/ucB4GoJcsPoGAoQAeagSEIFao43d0e4qpBrRCjjc/sH7vPMkw7mNE+UdQlmbK39Kuv3Nav
	ut43o3MUKtoNXTFH4aj3wQ5paUh4SPpXfBB7C+s6fztAUQJNaEa9AelaBB3epgUJxEdIiSTT5ML
	Dqs4dXSPV2hBkCMzOr4v4P+WsInDxLz3OugtD8YhE/Xl8qM1n//l3zHNGkQuYAyKi9Co49nR8os
	p9YKC8RnzPo+eCI/5wA43wJ0GPNT5vjkT6B6SWolIvYDrK5xdd+tj8dtM4f7EfRamFRE1Ap+zZn
	X9R5+ORqjCMuFO1M/ISewpQ==
X-Google-Smtp-Source: AGHT+IGa8KHeqSfvai4gM0A+MR712S3ariHHnp5X7yo+cWqQtSzUkx4fPOGLLduFzalQxzqnA/R9mw==
X-Received: by 2002:a5d:6485:0:b0:391:2d8f:dd59 with SMTP id ffacd0b85a97d-3997f90d943mr3320018f8f.24.1742567698365;
        Fri, 21 Mar 2025 07:34:58 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5080:77b0:43f2:5276? ([2a01:e0a:3d9:2080:5080:77b0:43f2:5276])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9b55cdsm2544183f8f.52.2025.03.21.07.34.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 07:34:57 -0700 (PDT)
Message-ID: <2b572981-7e63-4052-8186-4ba17f530cca@linaro.org>
Date: Fri, 21 Mar 2025 15:34:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 05/10] phy: phy-snps-eusb2: split phy init code
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Abel Vesa
 <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
References: <20250321135854.1431375-1-ivo.ivanov.ivanov1@gmail.com>
 <20250321135854.1431375-6-ivo.ivanov.ivanov1@gmail.com>
 <7v3xkvldjnpqakrndwl6wb6vdsl3idbirlhddpqhwtt3ddadzr@kjafi3updcsb>
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
In-Reply-To: <7v3xkvldjnpqakrndwl6wb6vdsl3idbirlhddpqhwtt3ddadzr@kjafi3updcsb>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/03/2025 15:31, Dmitry Baryshkov wrote:
> On Fri, Mar 21, 2025 at 03:58:49PM +0200, Ivaylo Ivanov wrote:
>> The current phy init consists of hardware power-up, as well as
>> QCOM-specific eUSB2 init code. Split it into two parts, to make room
>> for such non-QCOM init code.
>>
>> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>> ---
>>   drivers/phy/phy-snps-eusb2.c | 96 +++++++++++++++++++++++-------------
>>   1 file changed, 63 insertions(+), 33 deletions(-)
>>
>> @@ -378,6 +401,11 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>>   	if (!phy)
>>   		return -ENOMEM;
>>   
>> +	drv_data = of_device_get_match_data(dev);
>> +	if (!drv_data)
>> +		return -EINVAL;
>> +	phy->data = drv_data;
> 
> Nit and completely bikeshedding, but this looks simpler:
> 
> 	phy->data = of_device_get_match_data(dev);
> 	if (!phy->data)
> 		return -EINVAL;

Please use device_get_match_data() instead.

Neil

> 
> 
> Anyway:
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> 
>> +
>>   	phy->base = devm_platform_ioremap_resource(pdev, 0);
>>   	if (IS_ERR(phy->base))
>>   		return PTR_ERR(phy->base);
>> @@ -424,8 +452,10 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>>   }
>>   
>>   static const struct of_device_id snps_eusb2_hsphy_of_match_table[] = {
>> -	{ .compatible = "qcom,sm8550-snps-eusb2-phy", },
>> -	{ },
>> +	{
>> +		.compatible = "qcom,sm8550-snps-eusb2-phy",
>> +		.data = &sm8550_snps_eusb2_phy,
>> +	}, { },
>>   };
>>   MODULE_DEVICE_TABLE(of, snps_eusb2_hsphy_of_match_table);
>>   
>> -- 
>> 2.43.0
>>
> 


