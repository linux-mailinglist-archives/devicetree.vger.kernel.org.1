Return-Path: <devicetree+bounces-73097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A21018FE03D
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 09:55:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 10F94B23953
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 07:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CDC713B7A9;
	Thu,  6 Jun 2024 07:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I8gQesET"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963A813B28F
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 07:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717660538; cv=none; b=olClTXTdaWi/Z63xW6XXmC/lyvdIzjGnPcH0JJTu4+PTKhkDg1RIZfeA78Pao0yaD6hG7BukiFMRUIsobT4/pqVGj+bGK1MZ1p4TUHJcH58Biwn+zxMjmfhTA97qbD+YN7Ld5qZQsEQZmPzhJCpSxa0zgfhE2CpAj8xz7yeFVMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717660538; c=relaxed/simple;
	bh=J7Ei1H0hqKdC8QZE3bB6jegN6szBqUtxZBcpRBHsuK8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=YvvvxqvEBIhMBT67l/zsz+TjNTNu/2/BwcnY8onhZP66ITU0VbLLKYm+UQ5uGOfw0wEBGRDbdui66Q8gqX6tisRO1V41uh2b0ZP16Hsto/OT2uPW7meesPtTNGSWtvYuQSgMfFMqwY42tU/wmqZxJ83cKnuIp8DRkll4JkH2pG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I8gQesET; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a6266ffdba8so51619766b.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 00:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717660535; x=1718265335; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o8T95313W3mZDzPZstW7YjrlrInDFmRJwHTZECYIMkU=;
        b=I8gQesETMR4W/I3HOTfKevCldBYAKacTlPmWTazIT5ddacGpiW6NUtQkvKQUEUCYRx
         hk2OicWtrWSaBY68W+nvJSIxIQHUKCRafXuQ41h52+DbFVDT8iVCBax0g6+nsfHExVbl
         JhAD7IcmEeuyzBGaLjZgIjqRytZiCRgVVH7+0/cu5QdD5aEJKulKETKmL0yNCljZ6Y9W
         zaoXdrHI8zgzo5Zuv9FaUMqvF8rg64Yt4PghvjtB6Sr7KyMAUAEA2NmCwxIMYBwjjrOq
         cByHl3JXnhnj2pPZEXT9QNi+R0AX+Cij7WchdCT8neTtyCqfo2hS+WQBI72MT0n/2XH6
         c5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717660535; x=1718265335;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o8T95313W3mZDzPZstW7YjrlrInDFmRJwHTZECYIMkU=;
        b=VMGdaDzWh3xbdwarDS0oWofShIKS0INZw5ljSTMZZ2RUhs3IKRR4VzL/2u/nTBHfiK
         RU904wDVKOBvIrkrrHIfn8/HWzbtZqZWh9GXDCkmccglf+Zz6V9V7UqSizvh+mBdg1ZJ
         3KmIEukS3ITBsGrfYA12sIqlgt6rakGCaKF5a6IqT7yYFixuTq1mPFcYedyDaK77sx5U
         7ocRemrXPlpVN1pUkjgQeaO+XM28EyphHweKaOxmDQ7D8NygTYYmDXirPfJ94cWaNBcL
         Vndaj3v0JiC3eipdAkutaBeZAPtJHJ8wihQ3gNS7nN3UWm/ar/MKBUIFtq+nUCLzBxxb
         u6dw==
X-Forwarded-Encrypted: i=1; AJvYcCWztKcHWwsFs/K2UoYP9LQOPxLaUSaIXKYa/f9CrBwndCBBM/P7pk6deb8hGJwGGZ+bQXfXDk5wjUVtC7oHY8ilNnCll3gLpElmQQ==
X-Gm-Message-State: AOJu0Yxvn9IZSvobajKRvgmRKpni1n+KOVCOgth6W5vvyGi2+YKfX1s5
	Dkq4bObZDLhQvGfDlSmUJ6aY/G5gEU+7YgDbsxaU13IRMmvG0dJCjK/7HMSh2Fk=
X-Google-Smtp-Source: AGHT+IFRDHwHG3B4LPuZSPQ1kwaqSrqUtGY4PgYiLj1LS7ldqzI2fECImZ1/8mCuVSI1SJMKMjUudQ==
X-Received: by 2002:a17:906:617:b0:a68:c21f:e24 with SMTP id a640c23a62f3a-a699f66767amr324062866b.32.1717660534734;
        Thu, 06 Jun 2024 00:55:34 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:22fd:4ae6:287f:17f2? ([2a01:e0a:982:cbb0:22fd:4ae6:287f:17f2])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c805cbca9sm58709366b.65.2024.06.06.00.55.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 00:55:34 -0700 (PDT)
Message-ID: <a5195a02-5a5d-43a3-9309-748bbc1e5346@linaro.org>
Date: Thu, 6 Jun 2024 09:55:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: usb: dwc2: allow device sub-nodes
To: Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240605-topic-amlogic-upstream-bindings-fixes-dwc2-subnodes-v1-1-915893e0cb20@linaro.org>
 <20240606004001.GA3525173-robh@kernel.org>
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
In-Reply-To: <20240606004001.GA3525173-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2024 02:40, Rob Herring wrote:
> On Wed, Jun 05, 2024 at 12:01:20PM +0200, Neil Armstrong wrote:
>> Allow the '#address-cells', '#size-cells' and subnodes as defined in
>> usb-hcd.yaml and used in the meson-gxbb-odroidc2 DT.
> 
> Doesn't referencing usb-hcd.yaml instead work? Or you need
> unevaluatedProperties?


I realized after my dt-schema was too old, and updating it fixes the problem...

Please ignore this patch,

Thanks,
Neil

> 
>>
>> The fixes the following:
>> meson-gxbb-odroidc2.dtb: usb@c9100000: '#address-cells', '#size-cells', 'hub@1' do not match any of the regexes: 'pinctrl-[0-9]+'
>> 	from schema $id: http://devicetree.org/schemas/usb/dwc2.yaml#
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/usb/dwc2.yaml | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
>> index 4f36a22aa6d7..9e737f587664 100644
>> --- a/Documentation/devicetree/bindings/usb/dwc2.yaml
>> +++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
>> @@ -177,6 +177,13 @@ properties:
>>       minItems: 1
>>       maxItems: 2
>>   
>> +  "#address-cells": true
>> +
>> +  "#size-cells": true
>> +
>> +patternProperties:
>> +  "^.*@[0-9a-f]{1,2}$": true
>> +
>>   dependencies:
>>     port: [ usb-role-switch ]
>>     role-switch-default-mode: [ usb-role-switch ]
>>
>> ---
>> base-commit: c3f38fa61af77b49866b006939479069cd451173
>> change-id: 20240605-topic-amlogic-upstream-bindings-fixes-dwc2-subnodes-4a68ead79624
>>
>> Best regards,
>> -- 
>> Neil Armstrong <neil.armstrong@linaro.org>
>>


