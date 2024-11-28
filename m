Return-Path: <devicetree+bounces-125326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72ACF9DB973
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 15:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5E65B20F6D
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA7971AED3F;
	Thu, 28 Nov 2024 14:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W5BRoEdc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D0119DF8D
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 14:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732803407; cv=none; b=UEDd0HnPm3nl1r25F57Jea7bYNH4/6qFSLvd5cOc4eeIv9mgqwOtRgxJ+QcT1tX7hZVRjFCEgbZa+P8gAKZL14vZfPFUJUtFFqTPlppkpJb177vOhrY4RMSuZ35QuCO2fmZ01fjTdqJiWkKhPkhjcJiVdNZtCaEZo2P5tKuBP8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732803407; c=relaxed/simple;
	bh=tD9T2cNXN8N5ZIgFXb9UF+AsJmmb03IzRlaR5j2mCZg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=QHLCQ3VKDrfrsdWFwXMe6PkS3O85rB6NXb94SPCRyPXNO7VEG9gW1AnrylRfjeKxDFxYb2aMkarXUpPFijAVa9JvfWh1DDEs+c+1TZpfXKFxMYrqwEloG7LGGvc515oL8CkjmoWZxJKT9jj0zARPaYX6bd7h9RSVHqzsjKPzyc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W5BRoEdc; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-434a1833367so5437295e9.1
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 06:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732803404; x=1733408204; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xzG0XNOQZF4a2W5O+NcAalaLtDSp8F8libK88vzeBpI=;
        b=W5BRoEdcG6vzpgRrAHsD3bwOnvB3C2WrFpSHrX+gCgGiSZyZrJQnUztZrgbhyyDF9r
         Dg2lyF10neouFJbmKxHBmQveGD3ctTge0ONhIVgnK+AuX0hlU4726wN1rvID26Ee51Vv
         PjiiYmNesJpUxmqMmhydC4SxBxRBQ9mk12FruVr1N5tE3grWmGYrmUu5NOEnbZMj3L9a
         hICm1X1XB9Asg0+52zoQTQ4jekldJXFrHMdmS5I7v4GhgANgLIrw2StbIoXpRw/AYtIQ
         q0EL/wPqsmGOPq5Gy+9Lnl9hA6G2LnOKzrfoEJ+dX7e2bUeTm7svlgNAmkaRgYwtqktk
         wUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732803404; x=1733408204;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xzG0XNOQZF4a2W5O+NcAalaLtDSp8F8libK88vzeBpI=;
        b=qCw2Xq2MuHIeuFkvZbNWu/4JBptRMfwPxd/GF66Lg9O/Xz3162YI3QuMARSVdEI/yo
         IWMnz48Sda8hN51f/3l2qskrZpcGkj5yCuKrNEa0sQG623Nk1wNJlWogzmXEtWffz3xr
         9ikbzUceVz4677Uo960W5aDFLcb8AMKBTqUxfrQqkef5l21JmFf4rOSqAkZxrq56+yNW
         stTzqTI40gsyedHJAIkmFSTR0y5GD1Y8h2l2OgF0JJ7tCPDqe8iup8PqD/K7nTVNvQE0
         Rt8RtmlEo1yZ0+E8jfuh6RqceBNU1HlUwBa5MkoKs8iUIwQVDcThKIKfxz4vNgzdBRjV
         XF6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVzP5HZDY1qcX121VIaD2LL//fwJr+zbwm1EiTrrw2JO6wSrfe+gKcunJgSNUSMfX3wuLXGqCfufQo8@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0RuaznjEQp9i/Z5k/tFMG0NXFhG5Xd6TNGZpCIbWhTyQwg1oB
	PltG6MySJloN4Pxyzt1yMXDPxY7raV45wV6L/Sb7o2eh4wsynN5omezdil6iNko=
X-Gm-Gg: ASbGncsa+ICx5R5F2TZ6VyUNWWeZ/dbrVGzaosIYWC1aZWtq3Os0SEZhFnOx89HqJ4D
	r/36OghqIK82VQXRB8WU+e9cgrhtYSJL5isP/8Umxso9uqFwaEWQZOB+5XtDvp1x9A5+uLo/FYe
	n0imjbFVS0I6TxZUYnTlNqvXkSi04aX6OCpbpGw/TV93e//zqJP0y5/07BQ5WH6/QU/+aHUljdJ
	i7HvLy2lyrVoYimltLZsG9rflC5EjZ1qY5x8bZqCeIxW2VnXrenbqm3u84qvzXDHQt4vRrzhKb4
	1XysweURClFJuhG6PYrnuZBV
X-Google-Smtp-Source: AGHT+IH9gpTDzzH0YVMfrX0ygKVTmF2nSE1+q9nvp2q6noStYv2AG3BDf1Oub/zJThviNJP8vK6UUw==
X-Received: by 2002:a05:600c:6c8a:b0:434:8e8a:d4ec with SMTP id 5b1f17b1804b1-434afc3b6e1mr30503355e9.13.1732803404015;
        Thu, 28 Nov 2024 06:16:44 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:42d0:cacb:48b:722a? ([2a01:e0a:982:cbb0:42d0:cacb:48b:722a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa7e4d42sm54447225e9.37.2024.11.28.06.16.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 06:16:43 -0800 (PST)
Message-ID: <c2d74a3e-5aaa-4568-aa28-189b7d1b48b0@linaro.org>
Date: Thu, 28 Nov 2024 15:16:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 6/7] arm64: qcom: dts: sm8550: add interconnect and
 opp-peak-kBps for GPU
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Akhil P Oommen <quic_akhilpo@quicinc.com>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20241128-topic-sm8x50-gpu-bw-vote-v3-0-81d60c10fb73@linaro.org>
 <20241128-topic-sm8x50-gpu-bw-vote-v3-6-81d60c10fb73@linaro.org>
 <7ylrgy44dlitavefgwaobve7runpy6eqyhufmtkxmwnqkj2g25@pfdjlf5aj4j6>
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
In-Reply-To: <7ylrgy44dlitavefgwaobve7runpy6eqyhufmtkxmwnqkj2g25@pfdjlf5aj4j6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/11/2024 14:26, Dmitry Baryshkov wrote:
> On Thu, Nov 28, 2024 at 11:25:46AM +0100, Neil Armstrong wrote:
>> Each GPU OPP requires a specific peak DDR bandwidth, let's add
>> those to each OPP and also the related interconnect path.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 11 +++++++++++
>>   1 file changed, 11 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> index e7774d32fb6d2288748ecec00bf525b2b3c40fbb..545eb52174c704bbefa69189fad9fbff053d8569 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> @@ -2114,6 +2114,9 @@ gpu: gpu@3d00000 {
>>   			qcom,gmu = <&gmu>;
>>   			#cooling-cells = <2>;
>>   
>> +			interconnects = <&gem_noc MASTER_GFX3D 0 &mc_virt SLAVE_EBI1 0>;
> 
> QCOM_ICC_TAG_ALWAYS

Damn, thanks forgot those one.

Thanks,
Neil

> 
> LGTM otherwise.
> 
>> +			interconnect-names = "gfx-mem";
>> +
>>   			status = "disabled";
>>   
>>   			zap-shader {
>> @@ -2127,41 +2130,49 @@ gpu_opp_table: opp-table {
>>   				opp-680000000 {
>>   					opp-hz = /bits/ 64 <680000000>;
>>   					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
>> +					opp-peak-kBps = <16500000>;
>>   				};
>>   
>>   				opp-615000000 {
>>   					opp-hz = /bits/ 64 <615000000>;
>>   					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
>> +					opp-peak-kBps = <16500000>;
>>   				};
>>   
>>   				opp-550000000 {
>>   					opp-hz = /bits/ 64 <550000000>;
>>   					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
>> +					opp-peak-kBps = <12449218>;
>>   				};
>>   
>>   				opp-475000000 {
>>   					opp-hz = /bits/ 64 <475000000>;
>>   					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
>> +					opp-peak-kBps = <8171875>;
>>   				};
>>   
>>   				opp-401000000 {
>>   					opp-hz = /bits/ 64 <401000000>;
>>   					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
>> +					opp-peak-kBps = <6671875>;
>>   				};
>>   
>>   				opp-348000000 {
>>   					opp-hz = /bits/ 64 <348000000>;
>>   					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
>> +					opp-peak-kBps = <6074218>;
>>   				};
>>   
>>   				opp-295000000 {
>>   					opp-hz = /bits/ 64 <295000000>;
>>   					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
>> +					opp-peak-kBps = <6074218>;
>>   				};
>>   
>>   				opp-220000000 {
>>   					opp-hz = /bits/ 64 <220000000>;
>>   					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
>> +					opp-peak-kBps = <6074218>;
>>   				};
>>   			};
>>   		};
>>
>> -- 
>> 2.34.1
>>
> 


