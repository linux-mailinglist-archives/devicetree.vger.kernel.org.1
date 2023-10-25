Return-Path: <devicetree+bounces-11802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 193BD7D6A70
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:54:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78B21B21069
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A2E327719;
	Wed, 25 Oct 2023 11:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xhQnCET6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE1826E30
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:54:12 +0000 (UTC)
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D86B183
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:54:11 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-32ded3eb835so3074062f8f.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698234849; x=1698839649; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+ltZJ6+Swzk+yoph3jfCx5O+AxaS4gg+n6PcWMPDR1U=;
        b=xhQnCET61UW2n5ZKo12yldp5czbdio0pwNBWYL/ZYa0ZXXoQLqYhdllxcH+Qe33eAa
         k5cu9DG+PrpsByQrp7ShH3D+RcpCAw7AdRp1FHCWYCAHbIVOfykrtx1x4BaRtR6NcbeO
         zsbC6Ak/O31NSdUe5bWm8mA/L+jsp9XRYmqT7GGtEKVIvvG1BI779++Yl9kg2xiybJ1N
         gEhBjFnFNmcFzSFiP+LbbEHuc2jY69viBPUTBkuLuP7wtRFMzVR82FKNWgiPYrKdI+5+
         oHRFZBk6wMDeipbQx0JgUATcK30vMeNE7oYNNEwtFYQ9wyVPhVBClcJD8/CUCXqlUyhj
         YK7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698234849; x=1698839649;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+ltZJ6+Swzk+yoph3jfCx5O+AxaS4gg+n6PcWMPDR1U=;
        b=a8UcbSJQGNSYDoQzkAjD7/Ov2YOJis1TU6p0X3lUzxJ09KO72qc+WiWXmpxZW+WkOn
         /VUYA5CEh4bS8nPgPAeqDqYMdRpQqKbf3VdwtK0YCTmzf8RtCCqEHukKmjVS4yQ8Cfct
         d3nm8JBbd6n/K0Uc4+/OhB63mozFs4O3G3p2vPBI+NEudIG5VHSft3MQDJqIh7RZ7/U2
         h0MANRC5lHWR9tL1iAcNX0OFbqttlIcnjzYi4OJDc4mJg5Rp/Z1NiX5TfSzFLuZ8ZnOy
         jq2qkMjYA8zlkakkYcWpWQJuuhvp5pMFGyn9qVg4hwI8D8Wh9lbM4+Sc84hrw2UdWzly
         bTbQ==
X-Gm-Message-State: AOJu0Ywg8Ge3rPpYQMcrIR9ZibZeBWpUYmGeSqsNM5ziGpfAC/tynlBd
	+kjDeHK+Rz18b2DhjXjbO7JoWg==
X-Google-Smtp-Source: AGHT+IGS8IxeGnw77ae04CewqnJrvLNlhqcwo7Not1TX3kus/2zqI9HEmaXRirkfvq4MiWRki24zag==
X-Received: by 2002:a5d:664c:0:b0:32d:93aa:3d63 with SMTP id f12-20020a5d664c000000b0032d93aa3d63mr11621264wrw.69.1698234849478;
        Wed, 25 Oct 2023 04:54:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:4b03:ec74:6374:5430? ([2a01:e0a:982:cbb0:4b03:ec74:6374:5430])
        by smtp.gmail.com with ESMTPSA id t13-20020a5d49cd000000b003176c6e87b1sm11797593wrs.81.2023.10.25.04.54.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 04:54:09 -0700 (PDT)
Message-ID: <03630289-d25a-498a-9f24-ac7633b48ee7@linaro.org>
Date: Wed, 25 Oct 2023 13:54:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC 7/8] arm64: dts: qcom: sm8650-mtp: add interconnect
 dependent device nodes
Content-Language: en-US, fr
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
 <20231025-topic-sm8650-upstream-dt-v1-7-a821712af62f@linaro.org>
 <c98a3141-13a2-4cb3-bbd0-74ff63446183@linaro.org>
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
In-Reply-To: <c98a3141-13a2-4cb3-bbd0-74ff63446183@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 25/10/2023 11:11, Konrad Dybcio wrote:
> 
> 
> On 10/25/23 09:47, Neil Armstrong wrote:
>> Now interconnect dependent devices are added in sm8650 DTSI,
>> now enable more devices for the Qualcomm SM8650 MTP board:
>> - PCIe
>> - Display
>> - DSPs
>> - SDCard
>> - UFS
>> - USB role switch with PMIC Glink
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> [...]
> 
>> +&ufs_mem_hc {
>> +    reset-gpios = <&tlmm 210 GPIO_ACTIVE_LOW>;
>> +
>> +    vcc-supply = <&vreg_l17b_2p5>;
>> +    vcc-max-microamp = <1300000>;
>> +    vccq-supply = <&vreg_l1c_1p2>;
>> +    vccq-max-microamp = <1200000>;
> You should amend these regulators' nodes with loadsetting
> and allowed mode properties

Ack will do that on both patches 7 & 8,

Thanks,
Neil

> 
> Konrad


