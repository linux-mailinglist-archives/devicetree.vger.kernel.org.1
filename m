Return-Path: <devicetree+bounces-200824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B286B162C9
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 16:28:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 350581AA343B
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 14:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2A582D9EEC;
	Wed, 30 Jul 2025 14:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G38OmcXE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F8A2D97B6
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 14:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753885725; cv=none; b=ciOpYBEUs8xfldgareijpk1jCbPCxskwM/uXnS9SEi94IbgRHeGjPvHuxeqQndZZJh4PPoXgC5X2qRz3wfiCk1nKVkmPU8q+crjiVWOylMhWAQ+wlGBf/A3Gt+YrXeMYnYqGVxiWqbmEJr5SVAo7wE/jEM1kwaVjDkgBjU37uG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753885725; c=relaxed/simple;
	bh=STW90s3KQt7qz/SZuFNEPaZC4WtWeH2+//zEppDSySQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=hZpdXf39Zk8OpssfnV+yfnwIIjv5jGueAJPNGTzrHwqeGt5TFnQxrISSeba2jd4KQF6UivpI2+QKyHXWXRzGNNyde+J7jEKfLgU9XP1SbDr15HR+xID93qRXtRirVkm24BDjxz2Py8sZgZYmVHF/19Nq4UqDO4Xa7AtGfxIeEUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G38OmcXE; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-454f428038eso59183275e9.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 07:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753885720; x=1754490520; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VYfKKkomyIJnTe7xVnvfHYaX8X0anbFk9RY4Fhlx8c8=;
        b=G38OmcXE8kN1awNd7uUHzT7pzMkYCd442ONg1KcWs8nGX8kG4GZev42dwoZEBUZ9+E
         Djt0cCT4rfpfJgFLPSdF570rFQlJRmSTMImxEUzys5i5NP3heD/zfXjj/sOwg2CzaPsl
         qdYuSyL484cHYl8hz3hHs3n52A9E7N1iIPLZaeq2AAZMEbIV6D4L4IdLd6N1bMCTOqwh
         Rkc99kssrngqfmIQnuExS4t5XpE6yKdVeYQxFBXSGHBZlI5GSECpYWipfhGRlZ5Y0ayp
         mGxgzCGAOJUrWkkrT0o4snzYHedARDsxdIGT5vjJHRnUAqML33YKY7R1JApgv8GBJbk+
         12mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753885720; x=1754490520;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VYfKKkomyIJnTe7xVnvfHYaX8X0anbFk9RY4Fhlx8c8=;
        b=IGF8lvBU0mDbXh/DiyurHZGgiOQ6TvPTNJv3nj0VVOMHpdpe95h5wf1ROWNd5x9AVv
         qd+9g9uQiO2yoreD/k+s61SmsQL8+7N5xJtDH2z2mtqok1tTpYrMVtGojR6f7meFzPvF
         fQHf2JsGMYp8MEfibEjA92wGu6sq5NcL9qSp0nRl+briIol7D/V/556MrYbvuZW+jjEJ
         kyFHLB7rXeUdtuQfG+uhZH4v6yHfXvYmSHhppJ/dfA8ucsxWJlGsOTw4jUDMGPPOJy7j
         XJgIoptCz5hHGHM4M5mPoTC0XOjm+27IM5zphDEqVLfNHgPVPYBurZWdwhM88LhR0oFw
         IvgA==
X-Forwarded-Encrypted: i=1; AJvYcCXVaRUVxIPouXJAJOKaHaitUW87XqMcJK5iLIE9bYzeTe7NObCKMcjK4C9UOl5JyfBbYXcnxtDloqzR@vger.kernel.org
X-Gm-Message-State: AOJu0YywGE+8M9YELAC8OzYxt6PnDl8BpsjHld8ZDrMS0qA1T2hQJv2C
	oZQxmXlPIBR5KDd3t1iKVjY/x/pzq74AqykESNVKwFithDznW/cQn5EsuDiTepEocds=
X-Gm-Gg: ASbGnctfW72wp6NERqR8b0ZwrasfJneVG1OiGHb4hO4eWnpdOjtO5y22FlvZg1g12AL
	/EMre+oFO+0MB/kCJ8q1r9UBwc20nMrN6uyMCdnvK8WapHWYLOSN8TXFP8NFrxrwXGrgTdaiY1k
	dXKrOeEk+P0ffGJJOhZ1ww3hqvRHvyHILI/YdtvTRYLmyzh6hges2aRJ20VgU9+ND7KN4CrmNWF
	F1LqLY8l4ZXvIfYhqJst5HP/WPVpmz2QY88J44Vsu4NeiOIQvEkgrVC7a42Y3yF3Hzk+6zhFRWK
	4YC4o8Yxo5k5boX4/bhqpYfjFtgGQfHEbZ6SWGhwRC3n3ctyQwe/yLeX/ERw3ShbaRqo8LHeZUa
	cN4mAdAdcom/FhP3PJw4S1XnLD2SMNM+mZ/BuM45UV+I1lM7jeKdPblXEKqkjuo6vzCahJZXpoP
	GebI2VI0U8bg==
X-Google-Smtp-Source: AGHT+IFkiongaw+716eYscwAn2hud6KDZWIRmXrEPYkuiIscgZfHi99ALGqutk4bxdBQdOBbpGHfUQ==
X-Received: by 2002:a5d:584c:0:b0:3b7:6828:5f78 with SMTP id ffacd0b85a97d-3b794fe4f79mr2697229f8f.4.1753885720284;
        Wed, 30 Jul 2025 07:28:40 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5cc9:639a:a021:88ef? ([2a01:e0a:3d9:2080:5cc9:639a:a021:88ef])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458953755d1sm28427255e9.11.2025.07.30.07.28.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 07:28:39 -0700 (PDT)
Message-ID: <a88b22b6-4be5-4176-95b0-0a03530bfd76@linaro.org>
Date: Wed, 30 Jul 2025 16:28:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: Add ACD levels for GPU
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250729-topic-sm8650-upstream-gpu-acd-level-v1-1-258090038a41@linaro.org>
 <63da4872-2365-40eb-9b2e-d3393ddd9b68@oss.qualcomm.com>
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
In-Reply-To: <63da4872-2365-40eb-9b2e-d3393ddd9b68@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/07/2025 12:00, Konrad Dybcio wrote:
> On 7/29/25 4:40 PM, Neil Armstrong wrote:
>> Update GPU node to include acd level values.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 14 +++++++++++++-
>>   1 file changed, 13 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> index 495ea9bfd008500dd2c9f46ceca94cf5f972beca..4cd933219ce008bd1c603c87778e210b6332e29c 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> @@ -4127,72 +4127,84 @@ zap-shader {
>>   
>>   			/* Speedbin needs more work on A740+, keep only lower freqs */
>>   			gpu_opp_table: opp-table {
>> -				compatible = "operating-points-v2";
>> +				compatible = "operating-points-v2-adreno",
>> +					     "operating-points-v2";
>>   
>>   				opp-231000000 {
>>   					opp-hz = /bits/ 64 <231000000>;
>>   					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
>>   					opp-peak-kBps = <2136718>;
>> +					qcom,opp-acd-level = <0xc82f5ffd>;
>>   				};
>>   
>>   				opp-310000000 {
>>   					opp-hz = /bits/ 64 <310000000>;
>>   					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
>>   					opp-peak-kBps = <2136718>;
>> +					qcom,opp-acd-level = <0xc82c5ffd>;
>>   				};
> 
> https://git.codelinaro.org/clo/la/platform/vendor/qcom/opensource/graphics-devicetree/-/blob/gfx-devicetree-oss.lnx.1.0.r1-rel/gpu/pineapple-v2-gpu-pwrlevels.dtsi?ref_type=heads
> 
> doesn't set ACD for D1/D2
> 
>>   
>>   				opp-366000000 {
>>   					opp-hz = /bits/ 64 <366000000>;
>>   					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
>>   					opp-peak-kBps = <6074218>;
>> +					qcom,opp-acd-level = <0xc02e5ffd>;
> 
> And other values differ too
> 
> What release did you grab these from?

A much more recent non-public release with different gpu-pwrlevels for different SKU codes,
all sets ACDs for D1/D2, and the ACD values are:

#define ACD_LEVEL_TURBO_L1    0x882a5ffd
#define ACD_LEVEL_TURBO       0x882a5ffd
#define ACD_LEVEL_NOM_L1      0x882a5ffd
#define ACD_LEVEL_NOM         0x882a5ffd
#define ACD_LEVEL_SVS_L2      0x882a5ffd
#define ACD_LEVEL_SVS_L1      0x882a5ffd
#define ACD_LEVEL_SVS_L0      0x882a5ffd
#define ACD_LEVEL_SVS         0x882c5ffd
#define ACD_LEVEL_LOW_SVS_L1  0xc02a5ffd
#define ACD_LEVEL_LOW_SVS     0xc02d5ffd
#define ACD_LEVEL_LOW_SVS_D0  0xc02e5ffd
#define ACD_LEVEL_LOW_SVS_D1  0xc82c5ffd
#define ACD_LEVEL_LOW_SVS_D2  0xc82f5ffd

Neil

> 
> Konrad


