Return-Path: <devicetree+bounces-14943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0FD7E79DD
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 08:51:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B9B3EB20E11
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 07:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC7D86ABB;
	Fri, 10 Nov 2023 07:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cscuRgDa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BE66FAB
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 07:51:08 +0000 (UTC)
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D54AD86B6
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 23:51:05 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-32d9d8284abso1026580f8f.3
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 23:51:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699602664; x=1700207464; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0EjioNiTBFjyXPezDEnKnxVCu9gZNSOYH3RV1e4/opE=;
        b=cscuRgDaXva9Xe/f2YtoSxHPvTLlfrlHi1mG897HFzz/3WbeMREBdvWhfz27j/+mz6
         QzIrXDH6iRMv0rAHweS2hT4JABCWUkWkU6IAGYPiiwqlr0DiGz4bvsgVK+7JBwtZMofx
         qG57F50VSQQgp+DGaG7mKmcTk6jRei563DN3/vziZ/v3OjY16GCWjYf/ezu9zhuNkwS7
         U2Q0ZK89VJUD+DQLIGR91cRF1cVM60XulcpH8Vf39dHq2jEvZ/6ep+tOm+SSF3m9wpFZ
         Z0RKbwirjeHtytV0CaeleDw9jBiFHVQ9PDF3A0alxSFt5xqHOkLLHPRcs81LSEzf0CEc
         8d5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699602664; x=1700207464;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0EjioNiTBFjyXPezDEnKnxVCu9gZNSOYH3RV1e4/opE=;
        b=B0Zwxr48LGAgTp2woTcPuMHBvKHFxUlj+yMiiyuFBxrqKOIpwnFcTYQAy/FSdsaT2L
         YwBSunizPyWkRCkA29HWowIijdiMMagiy/acv19edYIT0c3IaMuINDCdsX39dAeB/66u
         tynB5SbJ1naCznpE7csF7rEiZ7Xm4H3iUoGkapUxbLmsxizoG8/A1yokiEcZ+pMV+Xn1
         gC8lUzNEpkdVwjBkDJTEJP5z1rUgL52Oeb4bSvNmeX5KpvJhUUgjCia7bkhP7ZzvdMIC
         M9YBiDqDMDn/L+SvGUqPnf1+LoowiH59Ez8A+QGqK36g3FMoxGm53swzmdFH8XQV/Zcy
         C4jw==
X-Gm-Message-State: AOJu0Yz6/AFn3KwciWQJnIFr6JqXTdIYP2tyVGUuOit0otYewqSvsjPu
	qLZmRd0X4HMuM/OLNA9OLTne3A==
X-Google-Smtp-Source: AGHT+IGOBJ9Ak/suD1hSXqmK+yk5XNC/WxE0Ed7RGhHsVy2Nnm+c/K/9uXLwRs6KflD0SwZ2VCjo9Q==
X-Received: by 2002:a05:6000:1846:b0:32f:7bee:f300 with SMTP id c6-20020a056000184600b0032f7beef300mr6542585wri.4.1699602664217;
        Thu, 09 Nov 2023 23:51:04 -0800 (PST)
Received: from [192.168.7.189] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id i5-20020adff305000000b0031c52e81490sm1333879wro.72.2023.11.09.23.51.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 23:51:03 -0800 (PST)
Message-ID: <046062f4-e415-4c3f-a05d-81bef9857649@linaro.org>
Date: Fri, 10 Nov 2023 08:50:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v8 02/12] dt-bindings: soc: amlogic,meson-gx-hhi-sysctrl:
 add example covering meson-axg-hhi-sysctrl
Content-Language: en-US, fr
To: Conor Dooley <conor@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jagan Teki <jagan@amarulasolutions.com>, Nicolas Belin
 <nbelin@baylibre.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-0-81e4aeeda193@linaro.org>
 <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-2-81e4aeeda193@linaro.org>
 <20231109-dictator-hedging-94b0dec505b5@spud>
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
In-Reply-To: <20231109-dictator-hedging-94b0dec505b5@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/11/2023 18:34, Conor Dooley wrote:
> On Thu, Nov 09, 2023 at 10:00:03AM +0100, Neil Armstrong wrote:
>> Add a thirst example covering the meson-axg-hhi-sysctrl variant and more
> 
> What on earth is a thirst example? Some sort of "hysterical raisins"
> type of thing?
> 
> My confusion about that word aside,
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Indeed, I'll fix this bad typo :-)

Thanks,
Neil

> 
> Cheers,
> Conor.
> 
>> importantly the phy subnode.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml  | 41 ++++++++++++++++++++++
>>   1 file changed, 41 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml b/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml
>> index 16977e4e4357..2edf4ccea845 100644
>> --- a/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml
>> +++ b/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml
>> @@ -158,3 +158,44 @@ examples:
>>               };
>>           };
>>       };
>> +
>> +    bus@ff63c000 {
>> +        compatible = "simple-bus";
>> +        reg = <0xff63c000 0x1c00>;
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +        ranges = <0x0 0xff63c000 0x1c00>;
>> +
>> +        system-controller@0 {
>> +            compatible = "amlogic,meson-axg-hhi-sysctrl", "simple-mfd", "syscon";
>> +            reg = <0 0x400>;
>> +
>> +            clock-controller {
>> +                compatible = "amlogic,axg-clkc";
>> +                #clock-cells = <1>;
>> +                clocks = <&xtal>;
>> +                clock-names = "xtal";
>> +            };
>> +
>> +            power-controller {
>> +                compatible = "amlogic,meson-axg-pwrc";
>> +                #power-domain-cells = <1>;
>> +                amlogic,ao-sysctrl = <&sysctrl_AO>;
>> +
>> +                resets = <&reset_viu>,
>> +                         <&reset_venc>,
>> +                         <&reset_vcbus>,
>> +                         <&reset_vencl>,
>> +                         <&reset_vid_lock>;
>> +                reset-names = "viu", "venc", "vcbus", "vencl", "vid_lock";
>> +                clocks = <&clk_vpu>, <&clk_vapb>;
>> +                clock-names = "vpu", "vapb";
>> +            };
>> +
>> +            phy {
>> +                compatible = "amlogic,axg-mipi-pcie-analog-phy";
>> +                #phy-cells = <0>;
>> +                status = "disabled";
>> +            };
>> +        };
>> +    };
>>
>> -- 
>> 2.34.1
>>


