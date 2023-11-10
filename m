Return-Path: <devicetree+bounces-14945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CD47E79E2
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 08:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57AEB1C20B9E
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 07:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE58F6FDD;
	Fri, 10 Nov 2023 07:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yu13z3R7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2391B7483
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 07:52:02 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02A9786BF
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 23:52:01 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-32df66c691dso939237f8f.3
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 23:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699602719; x=1700207519; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=emsT2msKceFt3PV2O7Tp50pasdkiiAdF3O2L4Y3FXfM=;
        b=yu13z3R7/1pKnqdQFt14/ab8nhR13wMFnVVrEkaK5m0Yy5ZxrWUnlyxx+/0Y3b8ynE
         zBfww0B/e7RX1IDL1+JPyGlCzYuxuEQzJc017Iv1xMW47Qjc2QKLaPpGJL85ygPLJZAP
         qrqhVRweWzbXuJ2rxH46kh4rXlqGpcEvuuRQmZ8Hq4gzSMHzS/QvpuN5gnzkIqzNw6oF
         zInm+hNAlTvU3lszJWDCPOa5EW9nukTBcF5F2delh5vrbk4MimU/A+N5Tm0z20YjrBEX
         VcrH8y/di+FmGrfMJ5IKpME1Rt0cNhLpqqK7LP9QOFVIPSsJ7bAQ0m3lgnbFY3Q+WK0o
         pkhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699602719; x=1700207519;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=emsT2msKceFt3PV2O7Tp50pasdkiiAdF3O2L4Y3FXfM=;
        b=jQt9yMUHnBtV4cBIBrZ3PNiuZduAuWu9KpCPUvlNpGUOuENhM0VIoqwh5lp2XiSiJa
         TYy4ZJ1iN+ahyvNBn8OriLnITu/oM+JqKRE0HosgpKRX/XmEy0Yx7yxpC57a4ukyKLpz
         38b2JXoa2Reki5Ls08zq6Zd7gHQYQfb7VXan7vx0S2n6atMnGsKVRpbdQtAeSqQIeAjs
         xeMiHBi9PLZhZqE6vz3ZuNcJG9oKNbkJdod4XQ8zMPTpUpi9PzGxT0PG0jqUwC6NCEVh
         p0EBTWJcwTXOKpIlgNUp9SWe2ze6VhokUnGvr/kAkWqEhjPzLypUJX2HmOiYhIet2OoZ
         mYvg==
X-Gm-Message-State: AOJu0YyHaM6Bp7qasUoI/hdmi9KKhGh0E6sSd76AwurXgWWBltvwaMIP
	K7ZjhVDKLArhri6vv2A2T4hdNg==
X-Google-Smtp-Source: AGHT+IGw+PCkMA6bHWqEEuoAwJ5a3yEHlqxE3b+F0LZFd3qRiaZ2W3inoKUaaR7waw3M3gHHAzI3FA==
X-Received: by 2002:a5d:6dc5:0:b0:32d:8094:f4c8 with SMTP id d5-20020a5d6dc5000000b0032d8094f4c8mr5497228wrz.19.1699602719377;
        Thu, 09 Nov 2023 23:51:59 -0800 (PST)
Received: from [192.168.7.189] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id i5-20020adff305000000b0031c52e81490sm1333879wro.72.2023.11.09.23.51.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 23:51:58 -0800 (PST)
Message-ID: <589daf80-727e-460f-a41e-2481b199c805@linaro.org>
Date: Fri, 10 Nov 2023 08:51:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v8 04/12] dt-bindings: phy: amlogic,g12a-mipi-dphy-analog:
 drop unneeded reg property and example
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
 <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-4-81e4aeeda193@linaro.org>
 <20231109-sterility-unsoiled-e43771c61894@spud>
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
In-Reply-To: <20231109-sterility-unsoiled-e43771c61894@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/11/2023 19:04, Conor Dooley wrote:
> On Thu, Nov 09, 2023 at 10:00:05AM +0100, Neil Armstrong wrote:
>> Now this bindings is referred from amlogic,meson-gx-hhi-sysctrl.yaml and is
>> documented as a subnode of a simple-mfd, drop the invalid reg property.
> 
> I'd expect a note here tbh about how removing reg & relying on being a
> subnode of the simple-mfd is safe to do. It looks like your driver
> was added at the same time as this binding & it was always documented as
> being a child of the simple-mfd system controller, so I'd kinda expect
> to see a Fixes tag on this patch..
> 
> Am I missing something?

No you're totally right, I'll reword the commit message and add a Fixes tags.

Thanks,
Neil

> 
>>
>> Also drop the unnecessary example, the top level bindings example should
>> be enough.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml          | 12 ------------
>>   1 file changed, 12 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
>> index c8c83acfb871..81c2654b7e57 100644
>> --- a/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
>> +++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
>> @@ -16,20 +16,8 @@ properties:
>>     "#phy-cells":
>>       const: 0
>>   
>> -  reg:
>> -    maxItems: 1
>> -
>>   required:
>>     - compatible
>> -  - reg
>>     - "#phy-cells"
>>   
>>   additionalProperties: false
>> -
>> -examples:
>> -  - |
>> -    phy@0 {
>> -          compatible = "amlogic,g12a-mipi-dphy-analog";
>> -          reg = <0x0 0xc>;
>> -          #phy-cells = <0>;
>> -    };
>>
>> -- 
>> 2.34.1
>>


